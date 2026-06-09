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
read table gt_hashed assinging field-symbol(<fs_hashed>) with table key key = gv_head.
if sy-subrc eq 0.
<fs_hashed>-prev = gv_tail.
read table gt_hashed assigning field-symbol(<fs_hashed2>) with table key key = gv_tail.
if sy-subcr eq 0.
insert value #( key = gv_tail next = gv_head ) to table gt_hashed.
gv_head = gv_tail.
delete gt_hashed where key = gv_tail.
gv_tail = <fs_hashed2>-prev.
endif.
endif.
else.
read table gt_hashed assinging <fs_hashed> with table key key = inputkey.
if sy-subrc eq 0.
read table gt_hashed assinging <fs_hashed2> with table key key = <fs_hashed>-prev.
if sy-subrc eq 0.
<fs_hashed2>-prev = <fs_hashed>-prev.
<fs_hashed2>-next = <fs_hashed>-next.
delete gt_hashed where key = inputkey.
endif.
endif.

read table gt_hashed assinging <fs_hashed> with table key key = gv_head.
if sy-subrc eq 0.
<fs_hashed>-prev = inputkey.
endif.
insert value #( key = inputkey next = gv_head ) to table gt_hashed.
gv_head = inputkey.


endmethod.
