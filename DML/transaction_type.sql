-- Menambahkan data jenis transaksi baru ke dalam tabel transaction_type
INSERT INTO transaction_type (id, description)
VALUES
    ('DP', 'Deposit'),
    ('WD', 'Withdrawal');

-- Menampilkan semua data dari tabel transaction_type
SELECT * FROM transaction_type;
