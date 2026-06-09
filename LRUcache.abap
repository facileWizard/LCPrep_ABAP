 Q : LRU Cache (Full)

Problem Statement

Design a data structure that follows the Least Recently Used (LRU) caching policy.

The cache has a fixed capacity.

When the cache reaches capacity and a new item must be inserted, the least recently used item should be removed.

Implement the following operations:

GET(key)
Return the value associated with the key.
If the key does not exist, return -1.
Accessing a key makes it the most recently used item.
PUT(key, value)
Insert a new key-value pair.
If the key already exists:
Update its value.
Mark it as the most recently used item.
If the cache is full:
Remove the least recently used item.
Insert the new item.
Example

Cache Capacity = 3

PUT(A,10)
PUT(B,20)
PUT(C,30)

Cache Order:

C <-> B <-> A

(MRU → LRU)

GET(A)

Returns:

10

Cache Order:

A <-> C <-> B

A became most recently used.

PUT(D,40)

Cache full.

Evict:

B

because B is least recently used.

Cache Order:

D <-> A <-> C
Assumptions For ABAP Implementation
Cache Node Structure
key
value
prev_key
next_key
Storage

Use:

HASHED TABLE

with:

UNIQUE KEY key
Metadata

Maintain:

gv_head     " MRU
gv_tail     " LRU
gv_capacity
Expected Complexity
Operation	Complexity
GET	O(1)
PUT	O(1)
Recommended Helper Methods

Implement these first.

detach_node( key )

Removes node from current DLL position.

attach_at_head( key )

Places node at MRU position.

move_to_front( key )
detach
attach_at_head
remove_tail( )

Evicts least recently used node.
