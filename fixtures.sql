SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

SET search_path = wffm;

-- vendor fixtures
insert into vendors (id, name, email, address, url, bio, phone1, updated_at, active) values (1, 'test vendor', 'user1@testvendor.com', 'po box 100', 'http://testvendor.com', 'a vendor bio', '1999888888', current_timestamp, true);

-- user fixtures
insert into users (email, encrypted_password, vendor_id) values ('user1@testvendor.com', 'passw0rd', 1);

-- scopes
insert into scopes (id, name) values (1, 'admin');
insert into scopes (id, name) values (2, 'vendor');
insert into scopes (id, name) values (3, 'user');

-- scopes/vendors
insert into scopes_vendors (scopes_id, vendor_id) values (2, 1);
