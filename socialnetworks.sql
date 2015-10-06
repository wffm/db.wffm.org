--
-- Social Networks
--

CREATE TABLE facebook (
       id serial primary key,
       name character varying,
       url character varying,
       vendor_id INTEGER REFERENCES vendors(id)
);

CREATE TABLE twitter (
       id serial primary key,
       name character varying,
       url character varying,
       vendor_id INTEGER REFERENCES vendors(id)
);

CREATE TABLE pinterest (
       id serial primary key,
       name character varying,
       url character varying,
       vendor_id INTEGER REFERENCES vendors(id)
);

CREATE TABLE tumblr (
       id serial primary key,
       name character varying,
       url character varying,
       vendor_id INTEGER REFERENCES vendors(id)
);

CREATE TABLE instagram (
       id serial primary key,
       name character varying,
       url character varying,
       vendor_id INTEGER REFERENCES vendors(id)
);

CREATE TABLE etsy (
       id serial primary key,
       name character varying,
       url character varying,
       vendor_id INTEGER REFERENCES vendors(id)
);
