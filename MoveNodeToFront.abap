Move Node To Front
Problem

Given a doubly linked list, move a specified node to the head of the list.

Method
move_to_front( key )
Example 1

Input:

A <-> B <-> C <-> D

Operation:

move_to_front( C )

Output:

C <-> A <-> B <-> D
Example 2

Input:

A <-> B <-> C <-> D

Operation:

move_to_front( D )

Output:

D <-> A <-> B <-> C


"assumptions -> hashed map with structure of key, prev, next; gv_head, gv_tail.
method movenode2front.
if key = gv_head.
"do nothing.
elseif key = gv_tail.
read table gt_hashed assinging field-symbol(<fs_hashed>) with table key key = gv_hashed.
if sy-subrc eq 0.
<fs_hashed>-prev = gv_tail.
endif
endmethod.
