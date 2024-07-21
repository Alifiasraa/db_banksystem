CREATE TRIGGER customer_updated_at
BEFORE UPDATE ON customer
FOR EACH ROW EXECUTE FUNCTION updated_at();

CREATE TRIGGER account_updated_at
BEFORE UPDATE ON account
FOR EACH ROW EXECUTE FUNCTION updated_at();

CREATE TRIGGER address_updated_at
BEFORE UPDATE ON address
FOR EACH ROW EXECUTE FUNCTION updated_at();

CREATE TRIGGER trans_type_updated_at
BEFORE UPDATE ON transaction_type
FOR EACH ROW EXECUTE FUNCTION updated_at();