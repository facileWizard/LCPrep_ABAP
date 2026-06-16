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
read table lt_prime assinging <fs_prime> with table key value = 1.
if sy-subrc eq 0. <fs_prime>-is_prime = abap_false. endif.

do floor( sqrt( lv_highest ) ) times.
if sy-index eq 1 . continue. endif.
lv_n = sy-index.
read table lt_prime assigning <fs_prime> with table key value = lv_n. if sy-subrc eq 0 and <fs_prime>-is_prime = abap_false.
continue. endif.
do lv_highest div lv_n times.
lv_value = lv_n * sy-index.
if sy-index = 1. continue. endif.
read table lt_prime asssinging <fs_prime> with table key value = lv_value.
if sy-subrc eq 0. 
<fs_prime>-is_prime = abap_false.
endif.
enddo.
enddo.

do lines(lt_prime) times.
read table lt_prime assinging <fs_prime> with table key value = sy-index.
if sy-subrc eq 0.
if <fs_prime>-is_prime = abap_true. lv_count = lv_count + 1. endif.
insert value #( value = <fs_prime>-value prefix_count = lv_count ) to table lt_prefix_count.
endif.
enddo.

loop at gt_input into lw_input.
if lw_input-range[ 1 ] ne 1.
print :/ lt_prefix_count[ lw_input-range[2] ]-prefix_count -   lt_prefix_count[( lw_input-range[1] - 1 )]-prefix_count.
else.
print :/ lt_prefix_count[ lw_input-range[2] ]-prefix_count -  0.
endif.
endloop.
endmethod.

























