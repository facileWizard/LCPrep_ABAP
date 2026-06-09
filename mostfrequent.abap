#Most Frequent element
Problem -> FInd the most frequent element in the array.
Approach -> use hash table to find the max count.

comp -> o(n)

method most_frequent_element.
lv_len = lines( it_input ).
loop at it_input into data(lw_input).
" data(lv_i) = sy-index - 1.
read table lt_hashedi assigning field-symbol(<fs_count>) with key number = lw_input.
if sy-subrc eq 0.
<fs_count>-count = <fs_count>-count + 1.
else.
INSERT VALUE #( number = lw_input count = 1 ) INTO TABLE lt_hashedi.
endif.
endloop.
data : lv_max type i.
loop at lt_hashedi into data(lw_hash).
if lw_hash-count > lv_max.
lv_max = lw_hash-count.
ev_most_frequent = lw_hash-number.
endif..
endloop.
endmethod.
