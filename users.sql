create table users (
       id serial primary key,
       email character varying unique,
       encrypted_password character varying,
       reset_password_token character varying,
       reset_password_sent_at timestamp without time zone,
       remember_created_at timestamp without time zone,
       sign_in_count integer DEFAULT 0 NOT NULL,
       current_sign_in_at timestamp without time zone default current_timestamp,
       last_sign_in_at timestamp without time zone,
       current_sign_in_ip character varying,
       last_sign_in_ip character varying,
       created_at timestamp without time zone not null,
       access_token character varying unique,
       vendor_id integer references vendors(id)
);

create index users_email on users(email);
