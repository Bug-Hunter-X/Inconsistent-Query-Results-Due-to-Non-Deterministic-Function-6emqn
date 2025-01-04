To fix this, avoid using non-deterministic functions in WHERE clauses or other parts of the query that affect the results in a non-repeatable way.  If you need a timestamp, use a column containing a timestamp value instead of a function that generates the timestamp dynamically.  If you absolutely need a timestamp, make sure to explicitly specify the timestamp used in a consistent manner.  Here's a corrected query that avoids using CURRENT_TIMESTAMP in the WHERE clause:  -- Assuming you have a 'created_at' column storing timestamps
SELECT * FROM my_table WHERE created_at BETWEEN '2024-01-01 00:00:00' AND '2024-01-31 23:59:59';