CREATE TABLE mailchimp_summaries (
    id integer NOT NULL,
    opens integer,
    unique_opens integer,
    emails_sent integer,
    facebook_likes integer,
    last_open timestamp without time zone,
    last_click timestamp without time zone,
    status character varying,
    archive_url character varying,
    unsubscribes integer,
    abuse_reports integer,
    open_rate numeric(11,2),
    click_rate numeric(11,2),
    bounce_rate numeric(11,2),
    unopen_rate numeric(11,2),
    unsub_rate numeric(11,2),
    abuse_rate numeric(11,2),
    created_at timestamp without time zone NOT NULL,
    c_id character varying,
    subject character varying,
    send_time timestamp without TIME ZONE
);

CREATE SEQUENCE mailchimp_summaries_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

ALTER SEQUENCE mailchimp_summaries_id_seq OWNED BY mailchimp_summaries.id;
ALTER TABLE ONLY mailchimp_summaries ALTER COLUMN id SET DEFAULT nextval('mailchimp_summaries_id_seq'::regclass);
