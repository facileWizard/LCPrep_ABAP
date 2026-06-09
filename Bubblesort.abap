#Implement Bubble sorted
Bubble sort -> a sorting algo where we compare the adjacent elements and swap to get the sorted order
Comp -> o(n*2)
space -> o(1)

method bubble_sort.
append lines of it_input to et_sorted.
lv_len = lines( it_input ). lv_i = 1. lv_j = 2.
data(lv_swap) = 0.
do lv_len times.
lv_i = 1. lv_j = 2. lv_swap = 0.
while ( lv_j le lv_len ).
if et_sorted[ lv_j ] < et_sorted[ lv_i ].
data(lv_temp) = et_sorted[ lv_i ].
et_sorted[ lv_i ] = et_sorted[ lv_j ].
et_sorted[ lv_j ] = lv_temp.
lv_swap = lv_swap + 1.
endif.
lv_i = lv_i + 1. lv_j = lv_j + 1.
endwhile.
if lv_swap eq 0. return. endif.
enddo.
endmethod.
