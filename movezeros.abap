Move Zeros

Given an integer array nums, move all 0 to the end of it while maintaining the relative order of the non-zero elements.

Note that you must do this in-place without making a copy of the array.
 
Example 1:

Input: nums = [0,1,0,3,12]
Output: [1,3,12,0,0]
Example 2:

Input: nums = [0]
Output: [0]

Move Zeroes (Two Pointer Approach)

- Use a write pointer to track position for next non-zero element
- Traverse array:
  - If element is non-zero → place at write pointer and increment it
- After traversal, fill remaining positions with zeroes

Time Complexity: O(n)  
Space Complexity: O(1)
 

method move_zeroes.
"using tow pointer
lv_j = 1. "write
loop at it_result into data(lw_input).
lv_i = sy-tabix.
if lw_input-i is initial.
lv_j = sy-tabix.
else.
it_result[ lv_j ]-i = lw_input-i.
lv_len = lv_len + 1.
endif.
endloop.
while lv_len le lines( it_result ).
it_result[ lv_len + 1 ]-i = 0.
lv_len = lv_len + 1.
endwhile.
endmethod.
