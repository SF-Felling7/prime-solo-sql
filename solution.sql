-- 0. Get all the users
SELECT * FROM syntax_practice;
-- 1. Get all users from Chicago.
SELECT * FROM syntax_practice WHERE city='chicago';
-- 2. Get all users with usernames that contain the letter a.
SELECT username AS "User Name" FROM syntax_practice;
-- 3. The bank is giving a new customer bonus! Update all records with an account balance of 0.00 and a transactions_attempted of 0. Give them a new account balance of 10.00.
UPDATE syntax_practice set account_balance='0' where user_id=1;
UPDATE syntax_practice set account_balance='0' where user_id=2;
UPDATE syntax_practice set account_balance='0' where user_id=3;
UPDATE syntax_practice set account_balance='0' where user_id=4;
UPDATE syntax_practice set account_balance='0' where user_id=5;
UPDATE syntax_practice set account_balance='0' where user_id=6;
UPDATE syntax_practice set account_balance='0' where user_id=7;
UPDATE syntax_practice set account_balance='0' where user_id=8;

UPDATE syntax_practice set transactions_attempted='0' where user_id=1;
UPDATE syntax_practice set transactions_attempted='0' where user_id=2;
UPDATE syntax_practice set transactions_attempted='0' where user_id=3;
UPDATE syntax_practice set transactions_attempted='0' where user_id=4;
UPDATE syntax_practice set transactions_attempted='0' where user_id=5;
UPDATE syntax_practice set transactions_attempted='0' where user_id=6;
UPDATE syntax_practice set transactions_attempted='0' where user_id=7;
UPDATE syntax_practice set transactions_attempted='0' where user_id=8;

UPDATE syntax_practice set account_balance='10.00' where user_id=1;
UPDATE syntax_practice set account_balance='10.00' where user_id=2;
UPDATE syntax_practice set account_balance='10.00' where user_id=3;
UPDATE syntax_practice set account_balance='10.00' where user_id=4;
UPDATE syntax_practice set account_balance='10.00' where user_id=5;
UPDATE syntax_practice set account_balance='10.00' where user_id=6;
UPDATE syntax_practice set account_balance='10.00' where user_id=7;
UPDATE syntax_practice set account_balance='10.00' where user_id=8;
-- OR
UPDATE syntax_practice set transactions_attempted='0';
UPDATE syntax_practice set account_balance='0';
UPDATE syntax_practice set account_balance='10.00';


-- 4. Select all users that have attempted 9 or more transactions.
SELECT * FROM syntax_practice WHERE transactions_attempted >= 9;
-- 5. Get the username and account balance of the 3 users with the highest balances, sort highest to lowest balance. NOTE: Research LIMIT
SELECT * FROM syntax_practice ORDER BY account_balance DESC LIMIT 3;
-- 6. Get the username and account balance of the 3 users with the lowest balances, sort lowest to highest balance.
SELECT * FROM syntax_practice ORDER BY account_balance  LIMIT 3;
-- 7. Get all users with account balances that are more than $100.
SELECT * FROM syntax_practice WHERE account_balance >100.00;
-- 8. Add a new record.
INSERT INTO syntax_practice (username, city, transactions_completed, transactions_attempted, account_balance ) VALUES ('sean', 'Minneapolis', 7, 10, 1000000.00  );
-- 9. The bank is losing money in Miami and Phoenix and needs to unload low transaction customers: Delete users that reside in miami OR phoenix and have completed fewer than 5 transactions.
DELETE from syntax_practice where transactions_completed <=5;
