-- entrypoint

set client_min_messages to error;
set client_encoding = 'utf8';

drop schema if exists wffm cascade;

create schema wffm;
set search_path = wffm;

\ir utils.sql
\ir vendors.sql
\ir users.sql
\ir contacts.sql
\ir mailchimp.sql
\ir logos.sql
\ir socialnetworks.sql
