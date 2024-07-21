-- Menambahkan data customer baru ke dalam tabel customer
INSERT INTO customer (name, gender, birth_date, phone_number, email, address_id)
VALUES
    ('Aether', 'Male', '1995-06-15', '081234567890', 'aether@gmail.com', 3),
    ('Lumine', 'Female', '1996-07-20', '081234567891', 'lumine@gmail.com', 3),
    ('Zhongli', 'Male', '1989-10-10', '081234567898', 'zhongli@gmail.com', 1),
    ('Keqing', 'Female', '1997-11-11', '081234567897', 'keqing@gmail.com', 5),
    ('Kazuha', 'Male', '1996-09-28', '081234567892', 'kazuha@gmail.com', 7),
    ('Yoimiya', 'Female', '1995-12-02', '081234567893', 'yoimiya@gmail.com', 2),
    ('Nahida', 'Female', '1994-03-23', '081234567894', 'nahida@gmail.com', 8),
    ('Alhaitham', 'Male', '1993-05-15', '081234567895', 'alhaitham@gmail.com', 4),
    ('Neuvillette', 'Male', '1992-07-19', '081234567896', 'neuvillette@gmail.com', 10),
    ('Furina', 'Female', '1991-11-30', '081234567899', 'furina@gmail.com', 6);

-- Memperbarui data customer dengan nama 'Keqing'
UPDATE customer 
SET name = 'Hutao', 
    email = 'hutao@gmail.com'
WHERE name = 'Keqing';

-- Menghapus data customer dengan nomor telepon '081234567897'
DELETE FROM customer
WHERE phone_number = '081234567897';

-- Menampilkan semua data dari tabel customer
SELECT * FROM customer;
