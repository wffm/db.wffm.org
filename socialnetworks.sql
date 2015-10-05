--
-- Social Networks
--

CREATE TABLE facebook (
       id serial primary key,
       name character varying,
       url character varying,
       vendor_id INTEGER REFERENCES vendors
);

CREATE TABLE twitter (
       id serial primary key,
       name character varying,
       url character varying,
       vendor_id INTEGER REFERENCES vendors
);

CREATE TABLE pinterest (
       id serial primary key,
       name character varying,
       url character varying,
       vendor_id INTEGER REFERENCES vendors
);

CREATE TABLE tumblr (
       id serial primary key,
       name character varying,
       url character varying,
       vendor_id INTEGER REFERENCES vendors
);

CREATE TABLE instagram (
       id serial primary key,
       name character varying,
       url character varying,
       vendor_id INTEGER REFERENCES vendors
);

CREATE TABLE etsy (
       id serial primary key,
       name character varying,
       url character varying,
       vendor_id INTEGER REFERENCES vendors
);
