A perfect number is a positive integer that is equal to the sum of its positive divisors excluding itself.

Example:

6

Divisors excluding itself:

1, 2, 3

Sum:

1 + 2 + 3 = 6

So 6 is a perfect number.

Another example:

28

Divisors:

1, 2, 4, 7, 14

Sum:

28

Also perfect.

method perfect_number(input).
rv_result = abap_false.
if input = 1. return. endif.
n = floor( sqrt( input ) ).
do n times.
if sy-index = 1.
sum = sum + 1.
else.
if input % sy-index eq 0.
if sy-index ne input div sy-index.
sum = sum + sy-index + ( input / sy-index ).
else.
sum = sum + sy-index.
endif
endif.
endif.
enddo.
if sum eq input.
rv_result = abap_true.
endif.
endmethod.
