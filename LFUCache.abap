460. LFU Cache
Problem Statement

Design a data structure that supports:

get(key)
put(key, value)

with:

O(1) average time
Eviction Rule

When cache is full:

Remove the item with the:

lowest frequency

If multiple items have the same frequency:

Remove the:

least recently used

among them.

Example

Capacity = 2

PUT(A,10)
PUT(B,20)

Current Frequencies

A -> 1
B -> 1
GET(A)

Now:

A -> freq 2
B -> freq 1
PUT(C,30)

Cache full.

Who gets removed?

B

because:

freq(B)=1
freq(A)=2
Hard Part

Suppose:

A freq=2
B freq=2

Need eviction.

Who goes?

Answer:

Least Recently Used among freq=2
