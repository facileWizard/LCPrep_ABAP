Implement Singly Linked List (Simulated)
📜 Problem

Design a singly linked list using ABAP.

Since ABAP has no pointers, simulate links using keys.

✅ Operations Required

Implement:

1️⃣ insert_at_head( key )

Insert new node at beginning.

2️⃣ print_list( )

Print list from head → tail.

📦 Node Structure

Each node should contain:

Field	Purpose
key	node value
next_key	points to next node
🧠 Example

Initially empty.

Operation
insert(A)

List:

A
Operation
insert(B)

List:

B -> A
Operation
insert(C)

List:

C -> B -> A

method insert_at_head(key).
"assumption a hashed map with key value pair (key, next_key)
gv_next = gv_head.
if gt_ll is intial.
insert value #( key = key, next_key = 0) to table gt_ll.
else.
insert value #( key = key next_key = gv_next) to table gt_ll.
endif.
gv_head = key.
endmethod.

method print_list.
lv_cur = gv_head.
while( lv_cur is not intial ).
print lv_cur.
read gt_ll into data(lw_ll) with table key key = lv_cur.
if sy-subrc eq 0.
lv_cur = lw_ll-next_key.
else.
exit.
endif.
endwhile.
endmethod.




























