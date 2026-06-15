Problem

Design a data structure that stores:

key
value
frequency

and supports:

put(key,value)
Insert new key with:
frequency = 1
If key exists:
update value
increase frequency by 1
get(key)
Return value if found.
Return -1 if not found.
If found:
frequency++
Example
PUT(A,10)

Table:

KEY	VALUE	FREQ
A	10	1
GET(A)

Returns:

10

Table:

KEY	VALUE	FREQ
A	10	2
GET(A)

Table:

KEY	VALUE	FREQ
A	10	3
PUT(A,50)

Table:

KEY	VALUE	FREQ
A	50	4
Assumptions

Use:

HASHED TABLE

Structure:

key
value
freq
Goal

Implement:

get( )
put( )

method put(key, value).
read table gt_hashed assignig field-symbol(<fs_hashed>) with table key key = key.
if sy-subrc eq 0.
<fs_hashed>-freq = <fs_hashed>-freq + 1.
<fs_hashed>-value = value
else.
insert value #( key = key value = value freq = 1 ) to table gt_hashed.
endif.
endmethod.

method get(key).
read table gt_hashed assignig field-symbol(<fs_hashed>) with table key key = key.
if sy-subrc eq 0.
<fs_hashed>-freq = <fs_hashed>-freq + 1.
rv_value = <fs_hashed>-value.
else.
rv_value = -1.
endif.
endmethod.




