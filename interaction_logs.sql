-- Synthetic historical events; confirmed payments are already reflected in opening balances.
CREATE TABLE interaction_logs (
  reference_id TEXT PRIMARY KEY, borrower_id TEXT NOT NULL, kind TEXT NOT NULL,
  status TEXT NOT NULL, amount TEXT, due_date TEXT, note TEXT NOT NULL, created_at TEXT NOT NULL
);
INSERT INTO interaction_logs VALUES ('seed-0', 'BRW-1001', 'payment', 'confirmed', '3000.00', NULL, 'Historical synthetic payment already reflected in opening balance', '2026-08-24T06:00:00+00:00');
INSERT INTO interaction_logs VALUES ('seed-1', 'BRW-1002', 'promise', 'broken', '10000.00', '2026-08-25', 'Prior promise missed; borrower reported temporary medical leave and requested WhatsApp', '2026-08-20T06:00:00+00:00');
INSERT INTO interaction_logs VALUES ('seed-2', 'BRW-1003', 'dispute', 'open', NULL, NULL, 'Borrower disputes fee calculation; verification pending', '2026-08-28T06:00:00+00:00');
INSERT INTO interaction_logs VALUES ('seed-3', 'BRW-1004', 'promise', 'broken', '15000.00', '2026-08-20', 'Missed earlier commitment; discuss affordability before another plan', '2026-08-15T06:00:00+00:00');
