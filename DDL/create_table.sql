CREATE TABLE address (
	id BIGSERIAL PRIMARY KEY NOT NULL,
	description TEXT NOT NULL,
	district VARCHAR(100) NOT NULL,
	province VARCHAR(100) NOT NULL,
	country VARCHAR(100) NOT NULL,
	post_code VARCHAR(20) NOT NULL,
	created_at TIMESTAMP NOT NULL DEFAULT NOW(),
	updated_at TIMESTAMP NOT NULL DEFAULT NOW()
);

CREATE TABLE customer (
	id UUID PRIMARY KEY NOT NULL DEFAULT gen_random_uuid(),
	name VARCHAR(225) NOT NULL,
	gender gender NOT NULL,
	birth_date DATE NOT NULL,
	phone_number VARCHAR(15) NOT NULL UNIQUE,
	email VARCHAR(100) NOT NULL UNIQUE,
	address_id BIGINT NOT NULL,
	created_at TIMESTAMP NOT NULL DEFAULT NOW(),
	updated_at TIMESTAMP NOT NULL DEFAULT NOW(),
	FOREIGN KEY (address_id) REFERENCES address(id) ON DELETE CASCADE
);

CREATE TABLE account (
	id UUID PRIMARY KEY NOT NULL DEFAULT gen_random_uuid(),
	customer_id UUID NOT NULL,
	account_number VARCHAR(20) NOT NULL,
	balance DECIMAL(15,2) NOT NULL DEFAULT 0,
	status account_status NOT NULL,
	created_at TIMESTAMP NOT NULL DEFAULT NOW(),
	updated_at TIMESTAMP NOT NULL DEFAULT NOW(),
	FOREIGN KEY (customer_id) REFERENCES customer(id) ON DELETE CASCADE
);

CREATE TABLE transaction_type (
	id VARCHAR(20) PRIMARY KEY NOT NULL,
	description VARCHAR(100) NOT NULL,
	created_at TIMESTAMP NOT NULL DEFAULT NOW(),
	updated_at TIMESTAMP NOT NULL DEFAULT NOW()
);

CREATE TABLE transaction (
	id UUID PRIMARY KEY NOT NULL DEFAULT gen_random_uuid(),
	account_id UUID NOT NULL,
	transaction_type_id VARCHAR(20) NOT NULL,
	destination_account UUID NOT NULL,
	amount DECIMAL(15,2) NOT NULL,
	note VARCHAR(100) NOT NULL,
	status transaction_status NOT NULL,
	transaction_date TIMESTAMP NOT NULL DEFAULT NOW(),
	FOREIGN KEY (account_id) REFERENCES account(id) ON DELETE CASCADE,
	FOREIGN KEY (transaction_type_id) REFERENCES transaction_type(id) ON DELETE CASCADE
);
