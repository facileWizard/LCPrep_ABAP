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
