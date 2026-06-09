Given an integer n, generate the first n rows of Pascal's Triangle.

In Pascal's Triangle, each number is the sum of the two numbers directly above it.

Example:

Input: 5

Output:

[
  [1],
  [1,1],
  [1,2,1],
  [1,3,3,1],
  [1,4,6,4,1]
]

lv_val = 1.
while ( n lt 0 ).
lv_count = n - sy-index.
do lv_count / 2 times.
print :/ lv_val.

enddo.
endwhile.

