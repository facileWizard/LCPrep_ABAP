Problem

Design a data structure that maintains one DLL per frequency.

Structures
Node Table
key
value
freq
prev_key
next_key
Frequency Metadata Table
freq
head_key
tail_key
Implement
insert_into_bucket( key, freq )

Insert a node into the DLL corresponding to that frequency.

Example

Suppose:

Frequency Table:

FREQ	HEAD	TAIL
1	A	B

Node Links:

A <-> B

Now call:

insert_into_bucket(
    key = C,
    freq = 1
)
Question

Where should C be inserted?

head?

or

tail?

and why?
