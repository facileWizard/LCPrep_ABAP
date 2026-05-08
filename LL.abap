🟢 Q1: Design a Key-Value Store

Problem:

Design a data structure that supports:

put(key, value)
get(key) → return value or -1 if not found

Constraints:

O(1) average lookup expected

Hint:
→ Use HASHED TABLE

method put.
"asssumptions a decalred hashed table with key pair gt_hashed, importing values key -> gv_key and value -> gv_value in declaration.
read table gt_hashed assigning field-symbo(<fs_hashed>) with table key key = gv_key.
if sy-subrc 0.
<fs_key>-value = gv_value.
else.
insert value #( key = gv_key value = gv_value ) to gt_hashed.
endif.
endmethod.

method get.
"assumption we have a filled gt_hashed table with values and parameter passed with the key and rv_value as returning parameter

read gt_hashed into data(wa_hashed) with table key key = gv_key.
if sy-subrc eq 0.
rv_value = wa_hashed-value.
else.
rv_value = -1.
endif.
endmethod.
