--
-- Vendors Schema
--

CREATE TABLE vendors (
    id serial PRIMARY KEY,
    name character varying,
    email character varying,
    address character varying,
    url character varying,
    bio character varying,
    phone1 character varying,
    phone2 character varying,
    active boolean DEFAULT false,
    created_at timestamp without time zone NOT NULL DEFAULT current_timestamp,
    updated_at timestamp without time zone NOT NULL,
    is_new_application boolean default false,
    is_craft_vendor boolean default false,
    dates_unavailable character varying
);

CREATE INDEX vendors_email ON vendors(email);

CREATE TRIGGER vendors_update
    BEFORE UPDATE ON vendors
    FOR EACH ROW
    EXECUTE PROCEDURE on_record_update();
