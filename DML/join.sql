-- Menggabungkan tabel customer dan address
SELECT 
    cu.id,
    cu.name,
    cu.gender,
    cu.birth_date,
    cu.phone_number,
    cu.email,
    ad.description,
    ad.district,
    ad.province,
    ad.country,
    ad.post_code
FROM customer AS cu
JOIN address AS ad ON cu.address_id = ad.id;

-- Menggabungkan tabel account dan customer
SELECT 
    cu.name,
    ac.account_number,
    ac.balance,
    ac.status AS account_status
FROM account AS ac
JOIN customer AS cu ON ac.customer_id = cu.id;

-- Menggabungkan tabel customer, account, dan transaction
SELECT 
    cu.id AS customer_id, 
    cu.name, 
    ac.account_number, 
    ac.balance, 
    tr.id AS transaction_id, 
    tr.transaction_type_id, 
    tr.destination_account, 
    tr.amount, 
    tr.status AS transaction_status, 
    tr.transaction_date
FROM customer AS cu
JOIN account AS ac ON cu.id = ac.customer_id
JOIN transaction AS tr ON ac.id = tr.account_id;
