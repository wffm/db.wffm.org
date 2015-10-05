CREATE TABLE contacts (
    id serial primary key,
    firstname character varying,
    lastname character varying,
    email character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);

create index contact_email on contacts(email);

CREATE TRIGGER contacts_insert
    BEFORE INSERT ON contacts
    FOR EACH ROW
    EXECUTE PROCEDURE on_record_insert();

CREATE TRIGGER contacts_update
    BEFORE UPDATE ON contacts
    FOR EACH ROW
    EXECUTE PROCEDURE on_record_update();
