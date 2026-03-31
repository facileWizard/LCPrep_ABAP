3Sum
Given an integer array nums, return all the triplets [nums[i], nums[j], nums[k]] such that i != j, i != k, and j != k, and nums[i] + nums[j] + nums[k] == 0.

Notice that the solution set must not contain duplicate triplets.

comp -> o(N^2)
approach -> two sum inside the loop, makes it efficient and do not need to sort like in sort and two pointer approach, cons -> space for hash map.

Example 1:

Input: nums = [-1,0,1,2,-1,-4]
Output: [[-1,-1,2],[-1,0,1]]
Explanation: 
nums[0] + nums[1] + nums[2] = (-1) + 0 + 1 = 0.
nums[1] + nums[2] + nums[4] = 0 + 1 + (-1) = 0.
nums[0] + nums[3] + nums[4] = (-1) + 2 + (-1) = 0.
The distinct triplets are [-1,0,1] and [-1,-1,2].
Notice that the order of the output and the order of the triplets does not matter.
Example 2:

Input: nums = [0,1,1]
Output: []
Explanation: The only possible triplet does not sum up to 0.
Example 3:

Input: nums = [0,0,0]
Output: [[0,0,0]]
Explanation: The only possible triplet sums up to 0.

method 3sum.

loop at gt_input into data(wa_input).
append value #( i = wa_input-i, index = sy-tabix ) to lt_hashed.
endloop.

loop at gt_input into wa_input.
index1 = sy-tabix.
lv_comp = target - wa_input.
loop at gt_input into lw_input.
index2 = sy-tabix.
lv_comp2 = lv_comp - lw_input.
read lt_hashed into data(lw_hashed) with table key i = lv_comp2.
if sy-subrc eq 0 and index ne index1 and index ne index2 .
append value #( i1 = wa_input, i2 = lw_input, i3 = lw_hashed-i ) to rv_result.
append value #( i1 = index, i2 = index2, i3 = index3 )
endif.
clear: lv_comp2, index2.
endloop.
clear : lv_comp, index1.
endloop.

loop at rv_result into data(wa_result).
write :/ wa_result-i1 ',' wa_result-i2 ',' wa_result-i3
endloop.

endmethod.
