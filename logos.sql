-- Vendor logos

CREATE TABLE vendor_logos (
       id INTEGER NOT NULL,
       vendor_id INTEGER REFERENCES vendors,
       filename CHARACTER VARYING,
       filesize character varying
);

CREATE SEQUENCE vendor_logos_id_seq
       START WITH 1
       INCREMENT BY 1
       NO MINVALUE
       NO MAXVALUE
       CACHE 1;

ALTER SEQUENCE vendor_logos_id_seq OWNED BY vendor_logos.id;
ALTER TABLE ONLY vendor_logos ALTER COLUMN id SET DEFAULT nextval('vendor_logos_id_seq'::regclass);
CREATE UNIQUE INDEX index_logos_on_filename ON vendor_logos USING btree (filename);
