create table users (
       email character varying,
       encrypted_password character varying DEFAULT ''::character varying,
       reset_password_token character varying,
       reset_password_sent_at timestamp without time zone,
       remember_created_at timestamp without time zone,
       sign_in_count integer DEFAULT 0 NOT NULL,
       current_sign_in_at timestamp without time zone,
       last_sign_in_at timestamp without time zone,
       current_sign_in_ip character varying,
       last_sign_in_ip character varying,
       created_at timestamp without time zone not null,
       vendor_id integer references vendors
);

alter table only users add constraint user_pkey primary key (email);
create unique index index_users_on_email on users using btree (email);
