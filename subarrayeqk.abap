#Subarray Sum Equals K

Given an array of integers nums and an integer k, return the total number of subarrays whose sum equals to k.

A subarray is a contiguous non-empty sequence of elements within an array.

 

Example 1:

Input: nums = [1,1,1], k = 2
Output: 2
Example 2:

Input: nums = [1,2,3], k = 3
Output: 2

Approach -> get the prefix using curr_element + prefix and search in hash map if exitst then subarray else not and append in the prefix hashmap
comp -> o(n)

method subarray_sum_equals_k.
append value #( number = 0 count = 1 ) to lt_hashedi.
data : lv_prefix type i.
loop at it_input into data(lw_input).
lv_prefix = lv_prefix + lw_input.
read table lt_hashedi with key number = lv_prefix - iv_k into data(lw_prefix).
if sy-subrc eq 0.
ev_count = ev_count + lw_prefix-count.
endif.
read table lt_hashedi assigning field-symbol(<fs_count>) with key number = lv_prefix.
if sy-subrc eq 0.
<fs_count>-count = <fs_count>-count + 1.
else.
append value #( number = lv_prefix count = 1 ) to lt_hashedi.
endif.
endloop.
endmethod.