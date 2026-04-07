🧩 Problem: Merge Intervals
📜 Problem Statement

Given a list of intervals [start, end], merge all overlapping intervals.

💡 Example
Input: [[1,3],[2,6],[8,10],[15,18]]  
Output: [[1,6],[8,10],[15,18]]

method merge_interval.
data lv_index type i.
loop at it_input into data(Wa_input).
lv_index = sy-index + 1.
while lv_flag.
if wa_input[lv_index]-low > wa_input-high.  lv_flag = false. endif.
endwhile.

clear lv_index.
endloop.
endmethod.
