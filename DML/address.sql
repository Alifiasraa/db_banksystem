-- Menambahkan data alamat baru ke dalam tabel address
INSERT INTO address (description, district, province, country, post_code)
VALUES
    ('Jl. Braga No.99', 'Bandung', 'Jawa Barat', 'Indonesia', '40111'),
    ('Jl. Malioboro No.18', 'Yogyakarta', 'DI Yogyakarta', 'Indonesia', '55271'),
    ('Jl. Diponegoro No.22', 'Bandung', 'Jawa Barat', 'Indonesia', '40171'),
    ('Jl. Pahlawan No.10', 'Sukabumi', 'Jawa Barat', 'Indonesia', '43121'),
    ('Jl. Merdeka No.45', 'Cimahi', 'Jawa Barat', 'Indonesia', '40512'),
    ('Jl. Gajah Mada No.123', 'Semarang', 'Jawa Tengah', 'Indonesia', '50134'),
    ('Jl. Ahmad Yani No.67', 'Cirebon', 'Jawa Barat', 'Indonesia', '45121'),
    ('Jl. Sudirman No.89', 'Purwokerto', 'Jawa Tengah', 'Indonesia', '53111'),
    ('Jl. Siliwangi No.56', 'Tasikmalaya', 'Jawa Barat', 'Indonesia', '46115'),
    ('Jl. Medan Merdeka Barat No.21', 'Jakarta', 'DKI Jakarta', 'Indonesia', '10110');

-- Memperbarui deskripsi alamat untuk id 1
UPDATE address 
SET description = 'Jl. Braga No.70' 
WHERE id = 1;

-- Menghapus data alamat dengan id 9
DELETE FROM address
WHERE ID = 9

-- Menampilkan semua data dari tabel address
SELECT * FROM address;
