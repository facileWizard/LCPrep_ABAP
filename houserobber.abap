#House Robber

You are a professional robber planning to rob houses along a street. Each house has a certain amount of money stashed, the only constraint stopping you from robbing each of them is that adjacent houses have security systems connected and it will automatically contact the police if two adjacent houses were broken into on the same night.

Given an integer array nums representing the amount of money of each house, return the maximum amount of money you can rob tonight without alerting the police.

 

Example 1:

Input: nums = [1,2,3,1]
Output: 4
Explanation: Rob house 1 (money = 1) and then rob house 3 (money = 3).
Total amount you can rob = 1 + 3 = 4.
Example 2:

Input: nums = [2,7,9,3,1]
Output: 12
Explanation: Rob house 1 (money = 2), rob house 3 (money = 9) and rob house 5 (money = 1).
Total amount you can rob = 2 + 9 + 1 = 12.

Approach -> store max at each stage, to get max at each stage compare with current max in dp with previous max + current element whichever greater append in dp internal table and keep it rolling
comp -> o(n)
space -> o(1)

method house_robber.
DATA: lt_dp TYPE STANDARD TABLE OF i WITH EMPTY KEY,
lv_len TYPE i,
lv_res TYPE i.
APPEND 0 TO lt_dp.
APPEND it_nums[ 1 ] TO lt_dp.
DO lines( it_nums ) - 1 TIMES.
lv_len = sy-index + 1.
APPEND ( nmax( val1 = lt_dp[ lv_len ]
val2 = lt_dp[ lv_len - 1 ] + it_nums[ lv_len + 1 ] ) ) TO lt_dp.
ENDDO.
rv_max = lt_
 