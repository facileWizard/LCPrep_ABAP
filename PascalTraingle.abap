Given an integer n, generate the first n rows of Pascal's Triangle.

In Pascal's Triangle, each number is the sum of the two numbers directly above it.

Example:

Input: 5

Output:

[
  [1],
  [1,1],
  [1,2,1],
  [1,3,3,1],
  [1,4,6,4,1]
]
"assumptions ty_outer of type row_index, innertable to store elements hashed table key row_index.
"gt_temp of type i for storing the calculated internat table to append at the end of iteration in the nested strucuture.

if gv_input le 0. return. endif.

lv_index = 1.
do gv_input times.
read table rt_output into data(lw_prev) with table key row_index = ( lv_index - 1 ).
if sy-subrc eq 0.
loop at lw_prev-inner_table into data(lv_prev_inner).
if sy-tabix eq 1.
append 1 to gt_temp.
else.
lv_value = lv_prev_inner + lw_prev-inner_table[ sy-tabix - 1 ].
append lv_value to gt_temp.
endif.
endloop.
append 1 to gt_temp.
INSERT VALUE ty_outer(
    row_index   = lv_index
    inner_table = gt_temp )
) INTO TABLE rt_ouput.
else.
INSERT VALUE ty_outer(
    row_index   = 1
    inner_table = VALUE tt_inner( ( 1 ) )
) INTO TABLE rt_output.
endif.
lv_index = lv_index + 1.
clear gt_temp.
enddo.

