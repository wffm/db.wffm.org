CREATE TABLE contacts (
    id integer NOT NULL,
    firstname character varying,
    lastname character varying,
    email character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);

CREATE SEQUENCE contacts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

ALTER SEQUENCE contacts_id_seq OWNED BY contacts.id;
ALTER TABLE ONLY contacts ALTER COLUMN id SET DEFAULT nextval('contacts_id_seq'::regclass);

CREATE TRIGGER contacts_insert
    BEFORE INSERT ON contacts
    FOR EACH ROW
    EXECUTE PROCEDURE on_record_insert('contacts_id_seq');

CREATE TRIGGER contacts_update
    BEFORE UPDATE ON contacts
    FOR EACH ROW
    EXECUTE PROCEDURE on_record_update();
