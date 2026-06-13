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

