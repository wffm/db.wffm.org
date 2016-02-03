'use strict';

var table = table => {
    table.increments().primary();
    table.integer('opens');
    table.integer('unique_opens');
    table.integer('emails_sent');
    table.integer('facebook_likes');
    table.timestamp('last_open');
    table.timestamp('last_click');
    table.timestamp('send_time');
    table.integer('unsubscribes');
    table.integer('abuse_reports');
    table.float('open_rate', 11, 2);
    table.float('click_rate', 11, 2);
    table.float('bounce_rate', 11, 2);
    table.float('unopen_rate', 11, 2);
    table.float('unsub_rate', 11, 2);
    table.float('abuse_rate', 11, 2);
    table.string('archive_url');
    table.string('status');
    table.string("c_id");
    table.string("subject");
    table.timestamps();
};

exports.up = function(knex, Promise) {
    return knex.schema.createTable('mailchimp_summaries', table)
        .then(() => {
            console.log("mailchimp_summaries created");
        });
};

exports.down = function(knex, Promise) {
    return knex.schema.dropTable('mailchimp_summaries', table)
        .then(() => {
            console.log('mailchimp_summaries table dropped');
        });
};
