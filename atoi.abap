#Implement ATOI

Problem -> ATOI conversion
Statement -> Implement the myAtoi(string s) function, which converts a string to a 32-bit signed integer.

The algorithm for myAtoi(string s) is as follows:

Whitespace: Ignore any leading whitespace (" ").
Signedness: Determine the sign by checking if the next character is '-' or '+', assuming positivity if neither present.
Conversion: Read the integer by skipping leading zeros until a non-digit character is encountered or the end of the string is reached. If no digits were read, then the result is 0.
Rounding: If the integer is out of the 32-bit signed integer range [-231, 231 - 1], then round the integer to remain in the range. Specifically, integers less than -231 should be rounded to -231, and integers greater than 231 - 1 should be rounded to 231 - 1.
Return the integer as the final result.

Approach -> use pattern matching to find the numbers and append in the final result and convert it to number.
for bigger number using bigint to accomodate the range.
loop until valid accordinf to the statment and start when u find number or negative sign first store the sign
will be used during conversion.


method string_to_integer. " atio fucntion
lv_len = strlen( iv_input ).
data : lv_result type string.
do lv_len times.
lv_i = sy-index - 1.
if ( iv_input+lv_i(1) eq '+' or iv_input+lv_i(1) = '-' ) and
lv_len ne sy-index and lv_result is initial.
if iv_input+sy-index(1) co '0123456789'.
if iv_input+lv_i(1) = '-'.
lv_result = '-'.
endif.
else.
return.
endif.
endif.
if iv_input+lv_i(1) co '0123456789' .
lv_result = lv_result && iv_input+lv_i(1).
else.
if lv_result is not initial and lv_result ne '-'.
ev_result = lv_result.
exit.
endif.
endif.
enddo.
lv_bigint = lv_result.
if lv_bigint lt -2147483648.
ev_result = -2147483648.
elseif lv_bigint gt 2147483648.
ev_result = 2147483648.
else.
ev_result = lv_bigint.
endif.
endmethod.
