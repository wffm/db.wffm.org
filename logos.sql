-- Vendor logos

CREATE TABLE vendor_logos (
       id serial PRIMARY KEY,
       vendor_id INTEGER REFERENCES vendors,
       filename CHARACTER VARYING,
       filesize character varying
);
