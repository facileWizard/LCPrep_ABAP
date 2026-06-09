#Check if a character is anagram of each other

Approach -> Use hash map to store the occurences count of charcaters and then compare the hash maps if all 
same return true else return abap_false
comp -> o(n) bcz of check using hash maps

method check_anagram.
is_anagram = abap_false.
data(lv_strlen) = strlen( iv_str1 ).
data(lv_strlen2) = strlen( iv_str2 ).
if ( lv_strlen eq lv_strlen2 ).
do lv_strlen times.
data(lv_i) = sy-index - 1.
read table lt_hashed assigning field-symbol(<lw_hash>) with table key char = iv_str1+lv_i(1).
if sy-subrc eq 0.
<lw_hash>-counti = <lw_hash>-counti + 1.
else.
INSERT VALUE #( char = iv_str1+lv_i(1) counti = 1 ) INTO TABLE lt_hashed.
endif.
read table lt_hashed2 assigning field-symbol(<lw_hash2>) with table key char = iv_str2+lv_i(1).
if sy-subrc eq 0.
<lw_hash2>-counti = <lw_hash2>-counti + 1.
else.
INSERT VALUE #( char = iv_str2+lv_i(1) counti = 1 ) INTO TABLE lt_hashed2.
endif.
enddo.
loop at lt_hashed into data(lw_check).
read table lt_hashed2 into data(lw_check2) with key char = lw_check-char.
if lw_check2-counti ne lw_check-counti.
return.
endif.
endloop.
is_anagram = abap_true.
endif.
endmethod.
