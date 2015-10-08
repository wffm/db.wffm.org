-- Vendor logos

CREATE TABLE vendor_logos (
       id serial PRIMARY KEY,
       vendor_id INTEGER REFERENCES vendors(id) ON DELETE CASCADE,
       filename CHARACTER VARYING,
       filesize character VARYING
);
