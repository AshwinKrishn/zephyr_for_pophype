#include "list.h"

struct a_list
{
  struct list_head list;
  const char* str;
};

static void append(struct a_list* ptr,const char* str, int val)           
{
  struct a_list* tmp;
  tmp = (struct a_list*)MyMalloc(sizeof(struct a_list));
  if(!tmp) {
    perror("malloc");
    exit(1);
  }
  tmp->str = str;
  list_add_tail( &(tmp->list), &(ptr->list) );
}

  struct a_list *  blist;
#define NUM_ENTRY 10000
int list_main(  void *  thelist)
{
  struct a_list* iter; 
  blist = (struct a_list *)thelist; 
/*
  for (int i = 0 ; i < NUM_ENTRY ; i++)
  {
	struct a_list* tmp;
  	tmp = (struct a_list*)MyMalloc(sizeof(struct a_list));
	tmp->str = (char *)MyMalloc(4* sizeof(char));
	sprintf(tmp->str , "%x",i);
	list_add_tail( &(tmp->list), &(blist->list) );		
  }
*/
  iter = blist ; 
  int offset_blist = offsetof(struct a_list , list) ;
  int count = 0;
  do
  {
			
	printf("%s \n", iter->str);
	iter = iter->list.next - offset_blist ;  

	count++;
				
  }while(iter != blist);
  printf("Number of entries is %d\n",count); 
  count = 0;
  while( !list_empty(&blist->list) ) {
  if(count %100 == 0){
    iter = list_entry(blist->list.next,struct a_list,list);
    list_del(&iter->list);
    MyFree(iter);
   }
  count++;
  }
  
  return 0;
}
