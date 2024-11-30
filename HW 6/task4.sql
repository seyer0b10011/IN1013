-- Task 4 - Sub-queries

-- 1 

SELECT cust_name 
FROM restBill 
WHERE bill_total > 450 
AND waiter_no IN (
    SELECT staff_no 
    FROM restStaff 
    WHERE first_name = 'Charles');

-- 2

SELECT first_name, surname
FROM restStaff
WHERE staff_no = (SELECT headwaiter
                  FROM restStaff
                  WHERE staff_no = (SELECT waiter_no
                                    FROM restBill
                                    WHERE cust_name = 'Nerida Smith' 
                                    AND bill_date = '160111'));
-- 3

SELECT cust_name
FROM restBill 
WHERE bill_total = (
                      SELECT MIN(bill_total)
                    FROM restBill);

-- 4 

SELECT first_name 
FROM restStaff
WHERE staff_no NOT IN (
                  -- SELECT waiter_no 
                  FROM restBill
                  );

-- 5 

SELECT cust_name, first_name, surname, room_name
FROM restStaff T1
INNER JOIN restBill T2
ON T1.staff_no = T2.waiter_no
INNER JOIN restRest_table T3
ON T2.table_no = T3.table_no
WHERE bill_total = (
                      SELECT MAX(bill_total) 
                    FROM restBill);
