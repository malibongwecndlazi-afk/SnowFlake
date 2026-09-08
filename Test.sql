-- 1. Create Database
create database ABSA


-- 2. Create Table
create table absa.public.Bank_Accounts (
firstname varchar (255),
surname varchar (255),
account_Type varchar (255),
email_address varchar (255)
)

--- select*from absa.public.Bank_Accounts

-- 3. Load Data Into Table
insert into absa.public.bank_accounts(
firstname, surname, account_type, email_address)
values
('Mali', 'Ndlazi', 'Cheque Account', 'duda01@gmail.com'),
('John', 'Smith', 'Savings Account', 'john.smith@gmail.com'),
('Sarah', 'Johnson', 'Cheque Account', 'sarah.johnson@yahoo.com'),
('David', 'Brown', 'Credit Account', 'david.brown@hotmail.com'),
('Nomsa', 'Mokoena', 'Savings Account', 'nomsa.mokoena@gmail.com'),
('Thabo', 'Dlamini', 'Cheque Account', 'thabo.dlamini@gmail.com'),
('Lerato', 'Khumalo', 'Savings Account', 'lerato.khumalo@yahoo.com'),
('Peter', 'Williams', 'Credit Account', 'peter.williams@gmail.com'),
('Amanda', 'Jones', 'Cheque Account', 'amanda.jones@hotmail.com'),
('Sipho', 'Nkosi', 'Savings Account', 'sipho.nkosi@gmail.com'),
('Karen', 'Taylor', 'Credit Account', 'karen.taylor@yahoo.com');

-- checks the duplicates
select firstname, surname, account_type, email_address, count (*) as cnt
from absa.public.bank_accounts
group by firstname, surname, account_type, email_address 
having count (*) > 1

