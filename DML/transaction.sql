-- Menambahkan data transaksi baru ke dalam tabel transaction
INSERT INTO transaction (account_id, transaction_type_id, destination_account, amount, note, status)
VALUES
    ('7c767dc5-1db3-48d4-bca2-8eb74247f588', 'DP', 'f59cb22d-bd70-4b4e-8c0c-021d697ff650', 500000, 'Initial deposit', 'Success'),
    ('6277e1ca-42cb-4c00-bbdf-8c8d8d2d75df', 'WD', '78e6195a-219a-45b4-9c54-68ee56578eeb', 200000, 'Withdrawal for rent', 'Pending'),
    ('aba81444-6291-4f30-8202-b6436d94e8a8', 'WD', '521f2b9d-7887-4691-b684-3a8f0906191a', 300000, 'Payment for services', 'In Progress'),
    ('78e6195a-219a-45b4-9c54-68ee56578eeb', 'WD', '4f562585-7c48-4418-abb0-277ead1f58c9', 150000, 'Grocery shopping', 'Failure'),
    ('521f2b9d-7887-4691-b684-3a8f0906191a', 'WD', '6277e1ca-42cb-4c00-bbdf-8c8d8d2d75df', 250000, 'Utility bills', 'Pending'),
    ('a7fe290d-84d3-4c3a-b055-7728f885d6f8', 'DP', 'c650d74f-ed68-4492-81a7-8b5c94cc8e6e', 800000, 'Investment return', 'Success');

-- Mengubah status transaksi dengan ID 'da70ca32-3ca8-44c9-9b58-82daf483f9b1' menjadi 'Failure'
UPDATE transaction
SET status = 'Failure'
WHERE id = 'da70ca32-3ca8-44c9-9b58-82daf483f9b1';

-- Menampilkan semua transaksi dengan status 'Failure'
SELECT * FROM transaction WHERE status = 'Failure';

-- Menghapus semua transaksi yang statusnya 'Failure'
DELETE FROM transaction
WHERE status = 'Failure';
