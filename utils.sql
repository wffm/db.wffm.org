-- General procedures

CREATE FUNCTION on_record_insert() RETURNS trigger AS $$
  BEGIN
    NEW.created_at := now();
    NEW.updated_at := now();
    RETURN NEW;
  END;
$$ LANGUAGE plpgsql;

CREATE FUNCTION on_record_update() RETURNS trigger AS $$
  BEGIN
    NEW.id         := OLD.id;
    NEW.created_at := OLD.created_at;
    NEW.updated_at := now();
    RETURN NEW;
  END;
$$ LANGUAGE plpgsql;

-- pgcrypto for users.hashpass
CREATE OR REPLACE FUNCTION crypt(text, text) RETURNS text AS '$libdir/pgcrypto', 'pg_crypt' LANGUAGE c IMMUTABLE STRICT;
CREATE OR REPLACE FUNCTION gen_salt(text, integer) RETURNS text AS '$libdir/pgcrypto', 'pg_gen_salt_rounds' LANGUAGE c STRICT;
CREATE OR REPLACE FUNCTION gen_random_bytes(integer) RETURNS bytea AS '$libdir/pgcrypto', 'pg_random_bytes' LANGUAGE c STRICT;

