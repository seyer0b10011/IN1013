-- Task 3 - Joins

-- 1

SELECT first_name
FROM restStaff S
INNER JOIN restBill B
ON S.staff_no = B.waiter_no
WHERE cust_name = 'Tanya Singh';

-- 2

SELECT room_date
FROM restRoom_management R
INNER JOIN restStaff S
ON R.headwaiter = S.staff_no
WHERE room_name = 'Green' AND room_date LIKE '1602%' AND S.first_name = 'Charles';

-- 3

SELECT S1.first_name, S1.surname
FROM restStaff S1
INNER JOIN restStaff S2
ON S1.headwaiter = S2.headwaiter
WHERE S2.first_name = 'Zoe' AND S2.surname = 'Ball' AND S1.first_name != 'Zoe';

-- 4

SELECT cust_name, bill_total, first_name
FROM restBill B
INNER JOIN restStaff S
ON B.waiter_no = S.staff_no
ORDER BY bill_total DESC;

-- 5

SELECT DISTINCT S.first_name, S.surname
FROM restBill B1
INNER JOIN restBill B2 
ON B1.table_no = B2.table_no
INNER JOIN restStaff S 
ON B1.waiter_no = S.staff_no
WHERE B1.bill_no IN (00014, 00017)

-- 6 

SELECT first_name, surname 
FROM restRoom_management T1
INNER JOIN restStaff T2
ON T1.headwaiter = T2.headwaiter
WHERE room_date = '160312' AND room_name = 'Blue';
