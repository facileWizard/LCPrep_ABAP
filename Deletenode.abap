Problem:

Given head and a key, delete that node.

Example:

A -> B -> C -> D
delete B

Output:
A -> C -> D

Edge cases:

deleting head
deleting tail

method delete_node(gv_key).
"assumption of gt_ll a single linked list with (key, next_key) strucutre and gv_head as head node.
lv_cur = gv_head.
if lv_cur eq gv_key.
read table gt_ll into data(lw_ll) with table key key = gv_head.
if sy-subrc eq 0.
gv_head = lw_ll-next_key.
endif.
delete table gt_ll where key = lw_ll-key.
return.
endif.
while lv_cur is not initial.
read gt_ll into lw_ll with table key key = lv_cur.
if sy-subrc eq 0.
if lw_ll-next_key = gv_key.
lv_nodetoassign = lv_cur.
read gt_ll into data(lw_ll2) with table key key = lw_ll-next_key.
if sy-subrc eq 0.
lv_valuetoassign = lw_ll2-next_key.
endif.
delete gt_ll where key = gv_key.
read gt_ll assigning field-symbol(<fs_assign>) with table key key = lv_nodetoassign.
if sy-subrc eq 0.
<fs_assign>-next_key = lv_valuetoassign.
endif.
exit.
else.
lv_cur = lw_ll-next_key.
endif.
endif.
endwhile.
endmethod.

