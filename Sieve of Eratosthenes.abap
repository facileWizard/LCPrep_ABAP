For each range [L, R], tell me how many prime numbers exist between L and R (inclusive).

Example

Suppose:

queries = [
  [1, 10],
  [10, 20],
  [20, 30]
]

For:

[1, 10]

Primes are:

2, 3, 5, 7

Count:

4

For:

[10, 20]

Primes are:

11, 13, 17, 19

Count:

4

For:

[20, 30]

Primes are:

23, 29

Count:

2

So the result would be:

[4, 4, 2]


method noofprime(gt_input).
"make a prime or no prime table
"prefix with no of primes before this number.
"use prefix tble to find the no of prime between ranges.

"to find the hightest number we need to map for our array.
loop at gt_input into data(lw_input).
if lw_input-range[2] > lv_highest.
lv_highest = lw_input-range[2].
endif.
endloop.

do lv_highest times.
insert value #( value = sy-index is_prime = abap_true ) to table lt_prime. " hashed table for o(1) access.
enddo.

do sqrt( lv_highest ) times.
if sy-index eq 1 . continue. endif.
lv_n = 1.
while ( lv_n le lv_highest ).
lv_n = lv_n * sy-index.
read table lt_prime asssinging <fs_prime> with table key value = lv_n.
if sy-subrc eq 0. 
<fs_prime>-is_prime = abap_false.
endif.
endwhile.
enddo.

loop at lt_prime into data(lw_prime).
if lw_prime-is_prime = abap_true. lv_count = lv_count + 1. endif.
insert value #( value = lw_prime-value prefix_count = lv_count ) to table lt_prefix_count.
endloop.

loop at gt_input into lw_input.
print :/ lt_prefix_count[ lw_input[ 2 ] ] -   lt_prefix_count[( lw_input[1] - 1 )].
endloop.
endmethod.

























