-- Synthetic opening ledger for Collections Resolution Agent demonstrations.
CREATE TABLE borrower_ledger (
  borrower_id TEXT PRIMARY KEY,
  borrower_name TEXT NOT NULL,
  account_status TEXT NOT NULL,
  days_overdue INTEGER NOT NULL,
  principal_due TEXT NOT NULL,
  fees_due TEXT NOT NULL,
  risk_tier TEXT NOT NULL,
  preferred_channel TEXT NOT NULL,
  timezone TEXT NOT NULL,
  contact_start_hour INTEGER NOT NULL,
  contact_end_hour INTEGER NOT NULL,
  max_contacts_per_day INTEGER NOT NULL,
  contact_consent INTEGER NOT NULL,
  tenant_id TEXT NOT NULL
);

INSERT INTO borrower_ledger VALUES
('BRW-1001','Aarav Sharma (synthetic)','delinquent',15,'12000.00','600.00','low','WhatsApp','Asia/Kolkata',8,19,2,1,'default'),
('BRW-1002','Meera Rao (synthetic)','delinquent',60,'80000.00','4000.00','medium','WhatsApp','Asia/Kolkata',8,19,2,1,'default'),
('BRW-1003','Kabir Shah (synthetic)','disputed',45,'35000.00','1500.00','medium','email','Asia/Kolkata',8,19,2,1,'default'),
('BRW-1004','Diya Menon (synthetic)','delinquent',100,'150000.00','9000.00','high','SMS','Asia/Kolkata',8,19,2,1,'default'),
('BRW-1005','Rohan Verma (synthetic)','delinquent',30,'15900.00','475.00','low','phone','Asia/Kolkata',8,19,2,1,'default'),
('BRW-1006','Ananya Iyer (synthetic)','delinquent',35,'53800.00','2150.00','medium','email','Asia/Kolkata',8,19,2,1,'default'),
('BRW-1007','Vikram Singh (synthetic)','delinquent',42,'76750.00','3070.00','medium','WhatsApp','Asia/Kolkata',8,19,2,1,'default'),
('BRW-1008','Nisha Patel (synthetic)','disputed',45,'32900.00','1645.00','medium','email','Asia/Kolkata',8,19,2,1,'default'),
('BRW-1009','Arjun Nair (synthetic)','delinquent',55,'90500.00','4525.00','high','SMS','Asia/Kolkata',8,19,2,1,'default'),
('BRW-1010','Priya Das (synthetic)','delinquent',60,'80000.00','4000.00','medium','WhatsApp','Asia/Kolkata',8,19,2,1,'default'),
('BRW-1011','Sanjay Kulkarni (synthetic)','delinquent',65,'118000.00','5900.00','high','phone','Asia/Kolkata',8,19,2,1,'default'),
('BRW-1012','Ishita Bose (synthetic)','delinquent',72,'44700.00','2235.00','medium','email','Asia/Kolkata',8,19,2,1,'default'),
('BRW-1013','Rahul Joshi (synthetic)','delinquent',80,'134500.00','6725.00','high','WhatsApp','Asia/Kolkata',8,19,2,1,'default'),
('BRW-1014','Kavya Reddy (synthetic)','disputed',89,'61400.00','3070.00','high','SMS','Asia/Kolkata',8,19,2,1,'default'),
('BRW-1015','Manish Gupta (synthetic)','delinquent',95,'150000.00','9000.00','high','phone','Asia/Kolkata',8,19,2,1,'default'),
('BRW-1016','Sneha Pillai (synthetic)','delinquent',120,'225000.00','13500.00','high','WhatsApp','Asia/Kolkata',8,19,2,1,'default'),
('BRW-1017','Aditya Jain (synthetic)','delinquent',150,'98600.00','7395.00','high','email','Asia/Kolkata',8,19,2,0,'default'),
('BRW-1018','Pooja Mishra (synthetic)','delinquent',180,'310000.00','21700.00','high','SMS','Asia/Kolkata',8,19,1,1,'default'),
('BRW-1019','Karan Malhotra (synthetic)','delinquent',210,'186000.00','14880.00','high','WhatsApp','Asia/Kolkata',8,19,1,1,'default'),
('BRW-1020','Lakshmi Krishnan (synthetic)','delinquent',240,'425000.00','34000.00','high','email','Asia/Kolkata',8,19,1,1,'default');
