-- EXECUTE THE ADD CUSTOMER PROCEDURE
EXECUTE DEUTSCHE_BANK.ADD_CUSTOMER('JAMES','S','MILLER','M','01-JUN-2018','IND');
SELECT * FROM BANK_CUST;

-- EXECUTE THE ADD_CUST_CONTACT PROCEDURE
EXECUTE  DEUTSCHE_BANK.ADD_CUST_CONTACT(1011,9885000935,'HOME','56 RD NO 14 B HILLS','BNR COLONY','HYD','TS',500034);
SELECT * FROM BANK_CUST_CONTACT;

-- EXECUTE THE ADD_SB_ACCOUNT PROCEDURE
EXECUTE  DEUTSCHE_BANK.ADD_SB_ACCOUNT(1011,NULL,1000,'ACTIVE',SYSDATE,NULL);
SELECT * FROM BANK_SB_ACCOUNT;
SELECT * FROM BANK_TRANSACTION;

-- EXECUTE THE SB_DEPOSIT PROCEDURE
EXECUTE  DEUTSCHE_BANK.SB_DEPOSIT (1000012011,'Deposit',1000);
SELECT * FROM BANK_SB_ACCOUNT;
SELECT * FROM BANK_TRANSACTION;

-- EXECUTE THE SB_DEPOSIT WITHDRAW PROCEDURE
EXECUTE  DEUTSCHE_BANK.SB_WITHDRAW(1000012011,'Withdrawal',1000);
SELECT * FROM BANK_SB_ACCOUNT;
SELECT * FROM BANK_TRANSACTION;

-- EXEC THE DEL_CUST PROCEDURE (IT IS OVERLOADED PROCEDURE)
EXECUTE  DEUTSCHE_BANK.DEL_CUST('john');
SELECT * FROM BANK_INT_RATE;
SELECT * FROM BANK_TRANSACTION;
