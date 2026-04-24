🧩 Problem: Merge Intervals
📜 Problem Statement

Given a list of intervals [start, end], merge all overlapping intervals.

💡 Example
Input: [[1,3],[2,6],[8,10],[15,18]]  
Output: [[1,6],[8,10],[15,18]]

method merge_interval.
data lv_index type bool.
sort table it_input.
loop at it_input into data(Wa_input).
lv_index = sy-index + 1.
if wa_input[lv_index]-low < wa_input-high. 
first = sy-index. 
delete it_input index lv_index. 
continue. 
else. 
first =  

clear lv_index.
endloop.
endmethod.
