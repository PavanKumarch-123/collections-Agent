-- Synthetic reference opening ledger. Existing operational balances are never reset.
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
  tenant_id TEXT NOT NULL,
  request_examples TEXT NOT NULL
);
INSERT INTO borrower_ledger VALUES ('BRW-1001', 'Aarav Sharma (synthetic)', 'delinquent', 15, '12000.00', '600.00', 'low', 'WhatsApp', 'Asia/Kolkata', 8, 19, 2, 1, 'default', '[{"label":"Process account","request":{"borrower_id":"BRW-1001"}},{"label":"10% fee waiver","request":{"borrower_id":"BRW-1001","requested_fee_waiver_percent":10}},{"label":"40% principal request","request":{"borrower_id":"BRW-1001","requested_principal_discount_percent":40}}]');
INSERT INTO borrower_ledger VALUES ('BRW-1002', 'Meera Rao (synthetic)', 'delinquent', 60, '80000.00', '4000.00', 'medium', 'WhatsApp', 'Asia/Kolkata', 8, 19, 2, 1, 'default', '[{"label":"Process account","request":{"borrower_id":"BRW-1002"}},{"label":"10% fee waiver","request":{"borrower_id":"BRW-1002","requested_fee_waiver_percent":10}},{"label":"40% principal request","request":{"borrower_id":"BRW-1002","requested_principal_discount_percent":40}}]');
INSERT INTO borrower_ledger VALUES ('BRW-1003', 'Kabir Shah (synthetic)', 'disputed', 45, '35000.00', '1500.00', 'medium', 'email', 'Asia/Kolkata', 8, 19, 2, 1, 'default', '[{"label":"Pause for dispute","request":{"borrower_id":"BRW-1003","requested_action":"pause_for_dispute"}}]');
INSERT INTO borrower_ledger VALUES ('BRW-1004', 'Diya Menon (synthetic)', 'delinquent', 100, '150000.00', '9000.00', 'high', 'SMS', 'Asia/Kolkata', 8, 19, 2, 1, 'default', '[{"label":"Process account","request":{"borrower_id":"BRW-1004"}},{"label":"10% fee waiver","request":{"borrower_id":"BRW-1004","requested_fee_waiver_percent":10}},{"label":"40% principal request","request":{"borrower_id":"BRW-1004","requested_principal_discount_percent":40}}]');
