-- 1
CREATE VIEW samsBills AS
SELECT 
    restStaff.first_name, 
    restStaff.surname, 
    restBill.bill_date, 
    restBill.cust_name, 
    restBill.bill_total
FROM 
    restBill
INNER JOIN 
    restStaff
ON 
    restBill.waiter_no = restStaff.staff_no
WHERE 
    restStaff.first_name = 'Sam' AND restStaff.surname = 'Pitt';

-- 2
SELECT * 
FROM samsBills
WHERE bill_total > 400;

-- 3
CREATE VIEW roomTotals AS
SELECT 
    restRest_table.room_name, 
    SUM(restBill.bill_total) AS total_sum
FROM 
    restBill
INNER JOIN 
    restRest_table
ON 
    restBill.table_no = restRest_table.table_no
GROUP BY 
    restRest_table.room_name;

-- 4
CREATE VIEW teamTotals AS
SELECT 
    CONCAT(headwaiter.first_name, ' ', headwaiter.surname) AS headwaiter_name, 
    SUM(restBill.bill_total) AS total_sum
FROM 
    restBill
INNER JOIN 
    restStaff AS waiter
ON 
    restBill.waiter_no = waiter.staff_no
INNER JOIN 
    restStaff AS headwaiter
ON 
    waiter.headwaiter = headwaiter.staff_no
GROUP BY 
    headwaiter.first_name, headwaiter.surname;
