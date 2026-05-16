Problem:

Remove the least recently used node (tail).

Example:

A -> B -> C -> D
remove tail

Output:
A -> B -> C

method delete_tail.
lv_cur = gv_head.
lv_prev = gv_head.
if lines(gt_ll) eq 1.
delete gt_ll where key = gv_head.
return.
endif.
while lv_head is not intial.
read gt_ll into data(lw_ll) with table key key = lv_cur.
if sy-subrc eq 0.
if lw_ll-next_key is intial.
delete gt_ll where key = lw_ll-key.
read table gt_ll assigning field-symbol (<fs_assign>) with table key key = lv_prev.
if sy-subrc eq 0.
<fs_assign>-next_key = ' '.
endif.
endif.
else.
exit.
endif.
lv_cur = lw_ll-next_key.
endwhile.
endmethod.
