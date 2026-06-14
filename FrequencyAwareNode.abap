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
