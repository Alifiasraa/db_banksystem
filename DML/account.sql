-- Menambahkan data akun baru ke dalam tabel account
INSERT INTO account (customer_id, account_number, balance, status)
VALUES
    ('33999fe0-5d4b-4d2e-8440-59e04ca4f9fa', '1234567890', 1000000, 'Active'), 
    ('33999fe0-5d4b-4d2e-8440-59e04ca4f9fa', '1234567891', 1500000, 'Active'), 
    ('3907bf86-a0a4-451f-9503-e9f6530c3c7c', '1234567892', 2000000, 'Active'),
    ('aa18b9d6-6263-47d0-a2ec-fa6a9f8fd96b', '1234567893', 2500000, 'Inactive'), 
    ('7304e557-99ef-41a9-a7b8-b29ad4d5d815', '1234567894', 3000000, 'Active'), 
    ('a7350931-88e0-4364-83b7-7ba3d1a106cd', '1234567895', 3500000, 'Inactive'), 
    ('301ccf32-2f8f-42d7-abaa-67c206df3f67', '1234567896', 4000000, 'Active'), 
    ('35389030-69ef-41b1-8c7f-56cc792b2ef0', '1234567897', 4500000, 'Inactive'), 
    ('f1efa6e5-5f24-42c6-9b65-23c5170b31f9', '1234567898', 5000000, 'Active'), 
    ('21fdc34d-c4f4-4056-b904-a0d28f5694da', '1234567899', 5500000, 'Active');

-- Mengubah status akun dengan nomor akun '1234567890' menjadi 'Inactive'
UPDATE account 
SET status = 'Inactive'
WHERE account_number = '1234567890';

-- Menghapus semua akun yang statusnya 'Inactive'
DELETE FROM account 
WHERE status = 'Inactive';

-- Menampilkan semua data dari tabel account
SELECT * FROM account;
