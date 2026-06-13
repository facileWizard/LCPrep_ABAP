Given an integer array nums, return all elements that appear more than ⌊n/3⌋ times.

Example:

Input:  [3,2,3]
Output: [3]

Input:  [1]
Output: [1]

Input:  [1,2]
Output: [1,2]
Follow-up

Can you solve it in:

O(n) time
O(1) extra space


loop at gt_input into data(lw_input).
if lv_count1 is initial.
lv_c1 = lw_input.
lv_count1 = 1.
else if lv_count1 is initial.
lv_c2 = lw_input.
lv_count2 = 1.
else if ( lv_c1 ne lw_input ) or ( lv_c2 ne lw_input ).
lv_count1 = lv_count1 - 1.
lv_count2 = lv_count2 - 1.
else if ( lv_c1 = lw_input ).
lv_count1 = lv_count1 + 1.
else if ( lv_c2 = lw_input ).
lv_count2 = lv_count2 + 1.
endif.
endloop.

clear : lv_count1, lv_count2.
lv_threshold = lines( gt_input ) div 3.
loop at gt_input into lw_input.
if lw_input = lv_c1.
lv_count1 = lv_count1 + 1.
else if lw_input = lv_c2.
lv_count2 = lv_count2 + 1.
endif.
endloop.

"rv_array returning array with the values we want.
if lv_count1 > lv_threshold.
append lv_c1 into rv_array.
else if lv_count2 > lv_threshold.
append lv_c2 into rv_array.
endif.
