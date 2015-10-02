--
-- Social Networks
--

CREATE TABLE facebook (
       id integer NOT NULL,
       name character varying,
       url character varying,
       vendor_id INTEGER REFERENCES vendors
);

CREATE TABLE twitter (
       id integer NOT NULL,
       name character varying,
       url character varying,
       vendor_id INTEGER REFERENCES vendors
);

CREATE TABLE pinterest (
       id integer NOT NULL,
       name character varying,
       url character varying,
       vendor_id INTEGER REFERENCES vendors
);

CREATE TABLE tumblr (
       id integer NOT NULL,
       name character varying,
       url character varying,
       vendor_id INTEGER REFERENCES vendors
);

CREATE TABLE instagram (
       id integer NOT NULL,
       name character varying,
       url character varying,
       vendor_id INTEGER REFERENCES vendors
);

CREATE TABLE etsy (
       id integer NOT NULL,
       name character varying,
       url character varying,
       vendor_id INTEGER REFERENCES vendors
);

CREATE SEQUENCE facebook_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE SEQUENCE twitter_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE SEQUENCE pinterest_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE SEQUENCE tumblr_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE SEQUENCE instagram_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE SEQUENCE etsy_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

ALTER TABLE ONLY facebook ALTER COLUMN id SET DEFAULT nextval('facebook_id_seq'::regclass);
ALTER TABLE ONLY twitter ALTER COLUMN id SET DEFAULT nextval('twitter_id_seq'::regclass);
ALTER TABLE ONLY pinterest ALTER COLUMN id SET DEFAULT nextval('pinterest_id_seq'::regclass);
ALTER TABLE ONLY tumblr ALTER COLUMN id SET DEFAULT nextval('tumblr_id_seq'::regclass);
ALTER TABLE ONLY instagram ALTER COLUMN id SET DEFAULT nextval('instagram_id_seq'::regclass);
ALTER TABLE ONLY etsy ALTER COLUMN id SET DEFAULT nextval('etsy_id_seq'::regclass);

ALTER SEQUENCE facebook_id_seq OWNED BY facebook.id;
ALTER SEQUENCE twitter_id_seq OWNED BY twitter.id;
ALTER SEQUENCE pinterest_id_seq OWNED BY pinterest.id;
ALTER SEQUENCE tumblr_id_seq OWNED BY tumblr.id;
ALTER SEQUENCE instagram_id_seq OWNED BY instagram.id;
ALTER SEQUENCE etsy_id_seq OWNED BY etsy.id;

CREATE UNIQUE INDEX index_facebook_on_name ON vendors USING btree (name);
CREATE UNIQUE INDEX index_twitter_on_name ON vendors USING btree (name);
CREATE UNIQUE INDEX index_pinterest_on_name ON vendors USING btree (name);
CREATE UNIQUE INDEX index_tumblr_on_name ON vendors USING btree (name);
CREATE UNIQUE INDEX index_instagram_on_name ON vendors USING btree (name);
CREATE UNIQUE INDEX index_etsy_on_name ON vendors USING btree (name);
