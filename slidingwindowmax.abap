#sliding_window_maximum
You are given an array of integers nums, there is a sliding window of size k which is moving 
from the very left of the array to the very right. You can only see the k numbers in the window. Each time the sliding window moves right by one position.

Return the max sliding window.

### Sliding Window Maximum (Deque Approach)

- Use a deque to store indices of useful elements
- Maintain decreasing order in deque
- Remove:
  - Smaller elements from back
  - Out-of-window elements from front
- Front of deque always gives maximum

Time Complexity: O(n)  
Space Complexity: O(k)


METHOD sliding_window_max.
DATA: lt_deque TYPE STANDARD TABLE OF i WITH EMPTY KEY,
lv_deque_len TYPE i VALUE 0,
lv_i TYPE i,
lv_k TYPE i,
lv_val TYPE i,
lw_input TYPE ty_i,
lt_result TYPE ty_in.
FIELD-SYMBOLS: <lv_deque_idx> TYPE i,
<lw_val> TYPE ty_i.
lv_k = iv_k.
DO lines( it_input ) TIMES.
lv_i = sy-index.
READ TABLE it_input INDEX lv_i ASSIGNING <lw_val>.
IF <lw_val> IS INITIAL.
CONTINUE.
ENDIF.
lv_val = <lw_val>-i.
" Remove from back all elements smaller than current
WHILE lv_deque_len > 0.
READ TABLE lt_deque INDEX lv_deque_len ASSIGNING <lv_deque_idx>.
READ TABLE it_input INDEX <lv_deque_idx> ASSIGNING <lw_val>.
IF <lw_val>-i < lv_val.
DELETE lt_deque INDEX lv_deque_len.
lv_deque_len = lv_deque_len - 1.
ELSE.
EXIT.
ENDIF.
ENDWHILE.
" Append current index
APPEND lv_i TO lt_deque.
lv_deque_len = lv_deque_len + 1.
" Remove front if it's outside window
READ TABLE lt_deque INDEX 1 ASSIGNING <lv_deque_idx>.
IF <lv_deque_idx> <= lv_i - lv_k.
DELETE lt_deque INDEX 1.
lv_deque_len = lv_deque_len - 1.
ENDIF.
" Append max when window size is reached
IF lv_i >= lv_k.
READ TABLE lt_deque INDEX 1 ASSIGNING <lv_deque_idx>.
READ TABLE it_input INDEX <lv_deque_idx> ASSIGNING <lw_val>.
APPEND VALUE #( i = <lw_val>-i ) TO lt_result.
ENDIF.
ENDDO.
et_result = lt_result.
ENDMETHOD.


