-- PIVOT
SELECT *
FROM sales_log
PIVOT
(
    SUM(quantity)
    FOR WEEK_DAY IN ('SALES_MON' AS dsales_mon,
                     'SALES_TUE' AS dsales_tue,
                     'SALES_WED' AS dsales_wed,
                     'SALES_THU' AS dsales_thu,
                     'SALES_FRI' AS dsales_fri)
)
order by EMPLOYEE_ID, WEEK_ID;

--UNPIVOT
select EMPLOYEE_ID, week_day, quantity
from SALES
UNPIVOT
(
    quantity
    for week_day
    in(SALES_MON, SALES_THU, SALES_WED, SALES_THU, SALES_FRI)
);