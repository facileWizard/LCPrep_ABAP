#Rotated Array
Given an integer array nums, rotate the array to the right by k steps, where k is non-negative.

Approach -> find the new position using mod on len + 1 and assign the values in the returning array.
intialize the rotate array with input array

comp -> o(n)

method rotate_array.
et_rotated = it_input.
loop at it_input into data(lw_input).
lv_i = ( ( sy-tabix - 1 + iv_k ) MOD lines( it_input ) ) + 1.
et_rotated[ lv_i ]-i = lw_input-i.
endloop.
endmethod.
