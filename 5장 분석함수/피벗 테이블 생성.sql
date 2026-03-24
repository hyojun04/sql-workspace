CREATE TABLE sales_log (
    employee_id NUMBER(6),
    week_id NUMBER(2),
    week_day VARCHAR2(10),
    quantity NUMBER(8,2)
);

INSERT INTO sales_log VALUES (1101, 4, 'SALES_MON', 100);
INSERT INTO sales_log VALUES (1101, 4, 'SALES_TUE', 150);
INSERT INTO sales_log VALUES (1101, 4, 'SALES_WED', 80);
INSERT INTO sales_log VALUES (1101, 4, 'SALES_THU', 60);
INSERT INTO sales_log VALUES (1101, 4, 'SALES_FRI', 120);

INSERT INTO sales_log VALUES (1102, 5, 'SALES_MON', 300);
INSERT INTO sales_log VALUES (1102, 5, 'SALES_TUE', 300);
INSERT INTO sales_log VALUES (1102, 5, 'SALES_WED', 230);
INSERT INTO sales_log VALUES (1102, 5, 'SALES_THU', 120);
INSERT INTO sales_log VALUES (1102, 5, 'SALES_FRI', 150);

COMMIT;

SELECT * FROM sales_log;


CREATE TABLE sales (
    employee_id NUMBER(6),
    week_id NUMBER(2),
    sales_mon NUMBER(8,2),
    sales_tue NUMBER(8,2),
    sales_wed NUMBER(8,2),
    sales_thu NUMBER(8,2),
    sales_fri NUMBER(8,2)
);

INSERT INTO sales VALUES (1101, 4, 100, 150, 80, 60, 120);
INSERT INTO sales VALUES (1102, 5, 300, 300, 230, 120, 150);

COMMIT;

SELECT * FROM sales;