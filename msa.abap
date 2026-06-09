#Merge Sorted array

Problem -> Given 2 sorted arrays make them one sorted array
Approach -> two pointer one in first array and second in second array, keep comparing the elements whichever
is in sorted order i.e. smaller for asc and bigger for desc add it in final array and increase the pointer.
keep the loop running until u reach the last elements of both array i.e. length. when the smaller array ends
and it comes out of loop append the rest of the elements in the returing array.

comp -> o(n)
space -> o(1)

METHOD merge_sorted_tables.
DATA: lv_len1 TYPE i,
lv_len2 TYPE i,
lv_i TYPE i VALUE 1,
lv_j TYPE i VALUE 1.
lv_len1 = lines( it_arr1 ).
lv_len2 = lines( it_arr2 ).
WHILE lv_i <= lv_len1 AND lv_j <= lv_len2.
IF it_arr1[ lv_i ] <= it_arr2[ lv_j ].
INSERT it_arr1[ lv_i ] INTO TABLE et_merged.
lv_i = lv_i + 1.
ELSE.
INSERT it_arr2[ lv_j ] INTO TABLE et_merged.
lv_j = lv_j + 1.
ENDIF.
ENDWHILE.
" Append remaining elements of arr1
WHILE lv_i <= lv_len1.
INSERT it_arr1[ lv_i ] INTO TABLE et_merged.
lv_i = lv_i + 1.
ENDWHILE.
" Append remaining elements of arr2
WHILE lv_j <= lv_len2.
INSERT it_arr2[ lv_j ] INTO TABLE et_merged.
lv_j = lv_j + 1.
ENDWHILE.
ENDMETHOD.
