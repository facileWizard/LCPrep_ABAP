#Remove duplicates sorted

Statement -> Given an integer array nums sorted in non-decreasing order, remove the duplicates in-place such that each 
unique element appears only once. The relative order of the elements should be kept the same.

Consider the number of unique elements in nums to be k​​​​​​​​​​​​​​. After removing duplicates, return the number
of unique elements k.

The first k elements of nums should contain the unique numbers in sorted order. The remaining elements beyond index k - 1 can be ignored.

Approach -> since it is sorted not to do much just compare with preceding elements if same dont append else 
append 


method remove_duplicates_sorted.
data lv_prev type i.
loop at it_input into data(lw_input) from 2.
if lv_prev ne lw_input-i.
insert value #( i = lw_input-i ) into table et_unique.
ev_count = ev_count + 1.
lv_prev = lw_input-i.
endif.
endloop.
endmethod.
