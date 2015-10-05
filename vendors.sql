--
-- Vendors Schema
--

CREATE TABLE vendors (
    id integer NOT NULL,
    name character varying,
    email character varying,
    address character varying,
    url character varying,
    logo character varying,
    bio character varying,
    phone1 character varying,
    phone2 character varying,
    active boolean DEFAULT false,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    is_new_application boolean default false,
    is_craft_vendor boolean default false,
    dates_unavailable character varying
);

CREATE SEQUENCE vendors_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

ALTER SEQUENCE vendors_id_seq OWNED BY vendors.id;

ALTER TABLE ONLY vendors ALTER COLUMN id SET DEFAULT nextval('vendors_id_seq'::regclass);
ALTER TABLE ONLY vendors ADD CONSTRAINT vendor_pkey PRIMARY KEY (id);

CREATE UNIQUE INDEX index_vendors_on_email ON vendors USING btree (email);

CREATE TRIGGER vendors_insert
    BEFORE INSERT ON vendors
    FOR EACH ROW
    EXECUTE PROCEDURE on_record_insert('vendors_id_seq');

CREATE TRIGGER vendors_update
    BEFORE UPDATE ON vendors
    FOR EACH ROW
    EXECUTE PROCEDURE on_record_update();
