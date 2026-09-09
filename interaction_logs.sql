-- Synthetic payment, promise, dispute and contact history.
CREATE TABLE interaction_logs (
  reference_id TEXT PRIMARY KEY, borrower_id TEXT NOT NULL, kind TEXT NOT NULL,
  status TEXT NOT NULL, amount TEXT, due_date TEXT, note TEXT NOT NULL, created_at TEXT NOT NULL
);

INSERT INTO interaction_logs VALUES
('seed-0','BRW-1001','payment','confirmed','3000.00',NULL,'Historical synthetic payment already reflected in opening balance','2026-08-24T06:00:00+00:00'),
('seed-1','BRW-1002','promise','broken','10000.00','2026-08-25','Prior promise missed; borrower reported temporary medical leave and requested WhatsApp','2026-08-20T06:00:00+00:00'),
('seed-2','BRW-1003','dispute','open',NULL,NULL,'Borrower disputes fee calculation; verification pending','2026-08-28T06:00:00+00:00'),
('seed-3','BRW-1004','promise','broken','15000.00','2026-08-20','Missed earlier commitment; discuss affordability before another plan','2026-08-15T06:00:00+00:00'),
('hist-005','BRW-1005','payment','confirmed','4000.00',NULL,'Partial payment confirmed and reflected in opening balance','2026-08-20T09:10:00+00:00'),
('hist-006','BRW-1006','contact','completed',NULL,NULL,'Borrower asked to discuss an affordable installment plan','2026-09-01T06:20:00+00:00'),
('hist-007','BRW-1006','promise','broken','12000.00','2026-09-05','Promise missed; affordability review requested','2026-08-29T07:00:00+00:00'),
('hist-008','BRW-1007','payment','confirmed','10000.00',NULL,'Payment confirmed and already reflected in opening balance','2026-08-18T05:50:00+00:00'),
('hist-009','BRW-1007','contact','completed',NULL,NULL,'WhatsApp retained as preferred channel','2026-09-02T08:00:00+00:00'),
('hist-010','BRW-1008','dispute','open',NULL,NULL,'Borrower disputes a late-fee calculation; verification pending','2026-09-03T06:00:00+00:00'),
('hist-011','BRW-1008','contact','completed',NULL,NULL,'Acknowledged dispute without making a payment demand','2026-09-03T06:10:00+00:00'),
('hist-012','BRW-1009','promise','broken','20000.00','2026-08-31','Commitment missed; borrower requested a lower installment','2026-08-20T05:45:00+00:00'),
('hist-013','BRW-1010','promise','broken','10000.00','2026-08-25','Prior promise missed during temporary medical leave','2026-08-20T06:00:00+00:00'),
('hist-014','BRW-1010','contact','completed',NULL,NULL,'Borrower confirmed WhatsApp as preferred channel','2026-08-27T07:30:00+00:00'),
('hist-015','BRW-1011','payment','confirmed','15000.00',NULL,'Partial payment confirmed and reflected in opening balance','2026-08-10T05:30:00+00:00'),
('hist-016','BRW-1011','promise','active','25000.00','2026-09-15','Borrower requested time until business receivables clear','2026-09-06T06:10:00+00:00'),
('hist-017','BRW-1012','dispute','closed',NULL,NULL,'Earlier payment-allocation query resolved','2026-08-22T06:00:00+00:00'),
('hist-018','BRW-1012','contact','completed',NULL,NULL,'Requested written payment-plan details by email','2026-09-04T06:40:00+00:00'),
('hist-019','BRW-1013','promise','broken','30000.00','2026-08-28','Broken promise; hardship and affordability review requested','2026-08-16T07:00:00+00:00'),
('hist-020','BRW-1014','dispute','open',NULL,NULL,'Borrower disputes insurance-related charges','2026-09-04T05:50:00+00:00'),
('hist-021','BRW-1015','promise','broken','15000.00','2026-08-20','Missed commitment; discuss affordability before a new plan','2026-08-15T06:00:00+00:00'),
('hist-022','BRW-1015','payment','confirmed','20000.00',NULL,'Older partial payment reflected in opening balance','2026-07-30T06:00:00+00:00'),
('hist-023','BRW-1016','contact','completed',NULL,NULL,'Borrower prefers concise WhatsApp communication','2026-09-01T07:10:00+00:00'),
('hist-024','BRW-1016','promise','active','40000.00','2026-09-20','Borrower proposed a partial payment pending plan review','2026-09-06T05:20:00+00:00'),
('hist-025','BRW-1017','contact','blocked',NULL,NULL,'Contact consent withdrawn; do not contact','2026-09-05T06:25:00+00:00'),
('hist-026','BRW-1018','promise','broken','50000.00','2026-08-15','Repeated missed commitment; one daily contact maximum applies','2026-08-01T06:00:00+00:00'),
('hist-027','BRW-1018','contact','completed',NULL,NULL,'SMS reminder recorded under daily contact limit','2026-09-08T06:00:00+00:00'),
('hist-028','BRW-1019','payment','confirmed','35000.00',NULL,'Partial payment reflected in opening balance','2026-07-25T05:40:00+00:00'),
('hist-029','BRW-1019','promise','broken','45000.00','2026-08-30','Promise missed after reduced business income','2026-08-12T06:45:00+00:00'),
('hist-030','BRW-1020','contact','completed',NULL,NULL,'Borrower requested a formal plan proposal by email','2026-09-02T05:55:00+00:00');
