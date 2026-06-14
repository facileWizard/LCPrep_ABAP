Given a string s, reverse the order of the words.

Example 1
Input:  "the sky is blue"
Output: "blue is sky the"
Example 2
Input:  "  hello world  "
Output: "world hello"

Notice:

Leading spaces removed
Trailing spaces removed
Example 3
Input:  "a good   example"
Output: "example good a"

Notice:

Multiple spaces between words become a single space.
Important Requirements

Input:

"  hello   world  "

Output:

"world hello"

Not:

"world   hello"

Not:

" world hello "

first approach -> condense, split at space, loop at split internal table from end and print.

My approach -> no extra space in place, just bcz of follow ups.

"assumptions : gv_string -> as input string.

helper function-> 
method reverse_string(string).
lv_left = 0.
lv_right = strlen( string ) - 1.
while lv_left lt lv_right.
lv_temp = string+lv_right(1).
string+lv_right(1) = string+lv_left(1).
string+lv_left(1) = lv_temp.
lv_left = lv_left + 1.
lv_right = lv_right - 1.
endwhile.
endmethod.

method reverse.
call method reverse_string( gv_string ).
condense gv_string.
lv_len = strlen( gv_string ).
lv_left = 0.
lv_right = 0.
do lv_len times.
lv_right = lv_right + 1.
lv_index = sy-index - 1.
if gv_string+lv_index(1) eq space or lv_right = lv_len.
lv_offset = lv_right - lv_left.
gv_string+lv_left(lv_offset) = reverse_string( gv_string+lv_left(lv_offset) ).
lv_left = lv_index + 1.
endif.
enddo.
endmethod.

































