-- Task 5 - Groups

-- 1

SELECT first_name, surname, COUNT(bill_no) AS Total_Sales
FROM restBill T1
INNER JOIN restStaff T2
ON T1.waiter_no = T2.staff_no
GROUP BY first_name, surname, bill_date
having count(bill_no) >= 2;

-- 2

SELECT room_name, COUNT(table_no) AS number_of_tables
FROM restRest_table
WHERE no_of_seats > 6
GROUP BY room_name;

-- 3

SELECT room_name, COUNT(bill_no) as amount_of_bills
FROM restRest_table T1
INNER JOIN restBill T2
ON T1.table_no = T2.table_no
GROUP BY room_name;

-- 4

SELECT T1.first_name, T1.surname, SUM(T2.bill_total) as total_bill_amount
FROM restStaff T1
INNER JOIN restStaff T3
ON T1.staff_no = T3.headwaiter
INNER JOIN restBill T2
ON T3.staff_no = T2.waiter_no
GROUP BY first_name, surname;


-- 5

SELECT cust_name, AVG(bill_total) as average_bill
FROM restBill
GROUP BY cust_name
HAVING AVG(bill_total) > 400;

-- 6

SELECT first_name, surname, COUNT(bill_no) AS Total_Sales
FROM restBill T1
INNER JOIN restStaff T2
ON T1.waiter_no = T2.staff_no
GROUP BY first_name, surname, bill_date
having count(bill_no) >= 3;