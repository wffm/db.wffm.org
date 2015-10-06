create table scopes (
       id serial primary key,
       name character varying
);

create index scopes_name on scopes(name);


create table scopes_vendors (
       scopes_id integer references scopes(id),
       vendor_id integer references vendors(id)
);

create index scopes_vendors_scopes_id on scopes_vendors(scopes_id);
create index scopes_vendors_vendor_id on scopes_vendors(vendor_id);
