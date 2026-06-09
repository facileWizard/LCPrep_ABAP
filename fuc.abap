#Implement First Unique Character
Check which is first unique character in an it_array
Approach -> Add elements in hash map and then search first character with counti = 1 that is the answer;
Comp-> O(n)

method first_unique_char.
rv_index = -1.
data(lv_strlen) = strlen( iv_string ).
do lv_strlen times.
data(lv_i) = sy-index - 1.
read table lt_hashed assigning field-symbol(<lw_hash>) with table key char = iv_string+lv_i(1).
if sy-subrc eq 0.
<lw_hash>-counti = <lw_hash>-counti + 1.
else.
INSERT VALUE #( char = iv_string+lv_i(1) counti = 1 indexi = ( sy-index - 1 ) ) INTO TABLE lt_hashed.
endif.
enddo.
LOOP AT lt_hashed INTO data(gw_hashed) WHERE counti = 1.
rv_index = gw_hashed-indexi.
exit.
endloop.
endmethod.
