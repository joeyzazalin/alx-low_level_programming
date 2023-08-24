Project by: Joseph Anateyi 
Project: 0x12. C - Singly linked lists
Course: ALX SOFTWARE ENGINEERING

Overview

Task 0

size_t print_list(const list_t *h)
{
  size_t s = 0;

  while (h) {
    if (!h->str)
      printf("[0] (nil)\n");
    else
      printf("[%u] %s\n", h->len, h->str);
    
    h = h->next;
    s++; 
  }

  return (s);
}
Declare s counter to track nodes printed
Loop while h is not NULL
Check if str is NULL, print (nil)
Else print len and str
Advance h to next node
Increment s counter
Return s count after full traversal
This traverses the list, printing each node's data and counting nodes.

Task 1


size_t list_len(const list_t *h)
{
  size_t n = 0;

  while (h) {
    n++;
    h = h->next;
  }

  return (n);
}
Declare counter n
Loop while h is not NULL
Increment n for each node
Set h to next node
Return n count after full traversal
Counts and returns number of nodes by incrementing n each iteration.

Task 2


list_t *_add_node(list_t **head, const char *str)
{
  list_t *new;
  unsigned int len = 0;

  while (str[len])
    len++;
  
  new = malloc(sizeof(list_t));
  new->str = strdup(str);
  new->len = len;
  new->next = (*head);
  (*head) = new;

  return (*head);
}
Get string length
Allocate new node
Copy string using strdup
Set new node fields (len, next, str)
Set head to new node
Return updated head
Allocates new node, copies string, links it to old head, and updates head.

Task 3

list_t *_add_node_end(list_t **head, const char *str) 
{
  list_t *new, *temp = *head;
  unsigned int len = 0;

  while(str[len])
    len++;
  
  new = malloc(sizeof(list_t));
  new->str = strdup(str);
  new->len = len;
  new->next = NULL;

  if (*head == NULL) {
    *head = new;
    return new;
  }

  while(temp->next) {
    temp = temp->next;
  }

  temp->next = new;  

  return new;
}
Calculate length of str
Allocate new node and copy str
Set new->next to NULL for end
If empty list, set head to new
Else traverse to last node
Set last node's next to new
Return new node
Traverses to end, links new node, handles empty list case.

Task 4


void free_list(list_t *head){

  list_t *temp;

  while (head) {
    temp = head->next;
    free(head->str);
    free(head);
    head = temp;
  }

}
Set temp to head's next
Free current node's str
Free current node
Set head to temp
Loop until end of list
Frees each node and advances until end, freeing entire list.

Task 5


void first(void) 
{
  printf("You're beat! and yet, you must allow,\n");
  printf("I bore my house upon my back!\n"); 
}
Print first required sentence
Print second required sentence
Uses printf to print sentences before main executes.

Task 6


extern printf

main:
  mov edi, format
  xor eax, eax
  call printf

  mov eax, 0
  ret

format: 
  db "Hello, Holberton", 0
Get address of format string
Zero out eax
Call printf(format)
Return 0
Calls printf to print the string


