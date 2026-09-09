-- Synthetic delegated-authority matrix. Percentages are cumulative against opening balances.
CREATE TABLE settlement_matrix (
  policy_version TEXT NOT NULL, band TEXT PRIMARY KEY, min_days INTEGER NOT NULL,
  max_days INTEGER NOT NULL, fee_waiver_max_percent INTEGER NOT NULL,
  principal_discount_max_percent INTEGER NOT NULL, max_installments INTEGER NOT NULL,
  default_action TEXT NOT NULL, default_installments INTEGER NOT NULL
);

INSERT INTO settlement_matrix VALUES
('COL-POL-2026-v1.0','1-30',1,30,10,0,3,'send_payment_link',3),
('COL-POL-2026-v1.0','31-60',31,60,10,0,6,'offer_payment_plan',3),
('COL-POL-2026-v1.0','61-90',61,90,10,5,9,'offer_payment_plan',3),
('COL-POL-2026-v1.0','91+',91,99999,10,10,12,'offer_payment_plan',3);
