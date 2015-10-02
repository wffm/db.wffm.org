-- General procedures

CREATE FUNCTION on_record_insert() RETURNS trigger AS $$
  DECLARE
    id_sequence VARCHAR;
  BEGIN
    SELECT TG_ARGV[0] INTO id_sequence;
    NEW.id         := nextval(id_sequence);
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
