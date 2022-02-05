/*
 * =============================================================================
 *
 *       Filename:  rbtree-tst.c
 *
 *    Description:  rbtree testcase.
 *
 *        Created:  09/02/2012 11:39:34 PM
 *
 *         Author:  Fu Haiping (forhappy), haipingf@gmail.com
 *        Company:  ICT ( Institute Of Computing Technology, CAS )
 *
 * =============================================================================
 */

#include "rbtree.h"
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <string.h>

extern void wait_for_other_core();
extern void  offload_rbtree_load(int * i,struct rb_root * mytree , struct mynode ** nodes , char * global_mtx);

char * global_lock;

struct mynode {
  	struct rb_node node;
  	char *string;
};

void MyLock(char *lock) { 
     while (__atomic_test_and_set(lock,__ATOMIC_SEQ_CST) == 1){
	printf("Waiting for the lock\n");
	}
}

void MyUnlock(char * lock)
{
	__atomic_clear(lock,__ATOMIC_RELAXED);
}


struct rb_root * mytree;

struct mynode * my_search(struct rb_root *root, char *string)
{
  	struct rb_node *node = root->rb_node;
	
  	while (node) {
  		struct mynode *data = container_of(node, struct mynode, node);
		int result;

		result = strcmp(string, data->string);

		if (result < 0)
  			node = node->rb_left;
		else if (result > 0)
  			node = node->rb_right;
		else
  			return data;
	}
	return NULL;
}

int my_insert(struct rb_root *root, struct mynode *data)
{
	struct rb_node **new = &(root->rb_node), *parent = NULL;

  	/* Figure out where to put new node */
  	while (*new) {
  		struct mynode *this = container_of(*new, struct mynode, node);
  		int result = strcmp(data->string, this->string);

		parent = *new;
  		if (result < 0)
  			new = &((*new)->rb_left);
  		else if (result > 0)
  			new = &((*new)->rb_right);
  		else
  			return 0;
  	}

  	/* Add new node and rebalance tree. */
  	rb_link_node(&data->node, parent, new);
  	rb_insert_color(&data->node, root);

	return 1;
}

void my_free(struct mynode *node)
{
	if (node != NULL) {
		if (node->string != NULL) {
			MyFree(node->string);
			node->string = NULL;
		}
		MyFree(node);
		node = NULL;
	}
}

#define NUM_NODES 1000

int kernel_rb_main()
{

	struct mynode **mn = (struct mynode**)MyMalloc(NUM_NODES* sizeof(struct mynode *));
	mytree = (struct rb_root *)MyMalloc(sizeof(struct rb_root));
	*mytree = RB_ROOT;
	/* *insert */
	global_lock = (char *)MyMalloc(sizeof(int));
	memset(global_lock, 0 , sizeof(int));
	
	volatile int * i = (int *)MyMalloc(sizeof(int) );
	
	*i = 0;
	printf("insert node from 1 to %d: \n",NUM_NODES);
	for (; *i < NUM_NODES - 100; (*i) += 1) {
		MyLock(global_lock);
		mn[*i] = (struct mynode *)MyMalloc(sizeof(struct mynode));
		mn[*i]->string = (char *)MyMalloc(sizeof(char) * 4);
		printf("Inserting %d\n",*i);
		sprintf(mn[*i]->string, "%x", *i);
		my_insert(mytree, mn[*i]);
		MyUnlock(global_lock);
	}
	
	
	offload_rbtree_load(i,mytree , mn, global_lock);
	
	static int number_entries = 0;	
	struct mynode *data ;
	while(number_entries < NUM_NODES - 100)
	{
		*i = 0;
		printf("Whiling\n");
		number_entries = 0;
	 	for (; *i < NUM_NODES; (*i) += 1) {
			if(mn[*i] == NULL){
				mn[*i] = (struct mynode *)MyMalloc(sizeof(struct mynode));
                		mn[*i]->string = (char *)MyMalloc(sizeof(char) * 4);
			}
			char text[4];
                	sprintf(text,"%x",*i);
                	data = my_search(mytree, text);
			if(!data)
			{
				sprintf(mn[*i]->string, "%x", *i);
				printf("%s not present \n",text);	
				MyLock(global_lock);
				my_insert(mytree, mn[*i]);
				MyUnlock(global_lock);
				number_entries++;
			}	
		}
	}


	/* *search */
	struct rb_node *node;
	
	/* *search again*/
	printf("search again:\n");
	int remaining = 0;
	for (node = rb_first(mytree); node; node = rb_next(node)){
		printf("key = %s\n", rb_entry(node, struct mynode, node)->string);
		remaining++;
	}
	printf("remaining entries are %d\n",remaining);
	return 0;
}
