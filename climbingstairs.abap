#CLimbing Stairs

You are climbing a staircase. It takes n steps to reach the top.

Each time you can either climb 1 or 2 steps. In how many distinct ways can you climb to the top?

 

Example 1:

Input: n = 2
Output: 2
Explanation: There are two ways to climb to the top.
1. 1 step + 1 step
2. 2 steps
Example 2:

Input: n = 3
Output: 3
Explanation: There are three ways to climb to the top.
1. 1 step + 1 step + 1 step
2. 1 step + 2 steps
3. 2 steps + 1 step

Approach -> if u make the pattern it turns to be fibonnaci series. rest implement
comp -> o(n)
space -> o(1)

method climbing_stairs.
lv_i = 0. lv_j = 1.
do iv_n times.
rv_ways = lv_j + lv_i.
lv_i = lv_j.
lv_j = rv_ways.
enddo.
endmethod.