🟡 Q4: Design Doubly Linked List

Operations:

insert at head
delete node by key
traverse forward

Structure:

key, prev_key, next_key

"assumption a hashed map with key as key and having prev and next for imitating Double LL behaviour.

method insert_at_head.
if gt_hashed is inital.
gv_head = key.
gv_tail = key.
insert value #( key = key next = ' ' prev = ' ' ) to table gt_hashed.
else.
insert value #( key = key next = gv_head prev = ' ' ) to table gt_hashed.
read table gt_hashed assigning field-symbol(<fs_hashed>) with key = gv_head.
if sy-subrc eq 0.
<fs_hashed>-prev = key.
endif.
gv_head = key.
endif.
endmethod.

method delete_node.
if key = gv_head.
read table gt_hashed assigning field-symbol(<fs_hashed>) with key = key.
if sy-subrc eq 0.
if <fs_hashed>-next is initial.
delete gt_hashed where key = key. clear: gv_head, gv_tail. return. endif.
read table gt_hashed assigning field-symbol(<fs_hashed2>) with key = <fs_hashed>-next.
if sy-subrc eq 0.
<fs_hashed2>-prev = ' ' .
delete gt_hashed where key = gv_head.
gv_head = <fs_hashed>-next.
endif.
endif.
elseif key = gv_tail.
read table gt_hashed assigning <fs_hashed> with key = key.
if sy-subrc eq 0.
read table gt_hashed assigning <fs_hashed2> with key = <fs_hashed>-prev.
if sy-subrc eq 0.
<fs_hashed2>-next = ' ' .
delete gt_hashed where key = gv_tail.
gv_tail = <fs_hashed>-prev.
endif.
endif.
else.
read table gt_hashed assigning <fs_hashed> with key = key.
if sy-subrc eq 0.
read gt_hashed assinging <fs_hashed2> with key = <fs_hashed>-prev.
if sy-subrc eq 0.
<fs_hashed2>-next = <fs_hashed>-next.
endif.
read gt_hashed assinging <fs_hashed2> with key = <fs_hashed>-next.
if sy-subrc eq 0.
<fs_hashed2>-prev = <fs_hashed>-prev.
endif.
endif.
delete gt_hashed where key = key.
endif.
endmethod.

method print_forward.
lv_cur = gv_head.
while lv_cur is not initial.
print :/ lv_cur.
read table gt_hashed assigning <fs_hashed> with key = lv_cur.
if sy-subrc eq 0.
lv_cur = <fs_hashed>-next.
endif.
endwhile.
endmethod.



















