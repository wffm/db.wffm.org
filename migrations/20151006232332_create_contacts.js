"use strict";

var table = table => {
    table.increments().primary();
    table.string("firstname");
    table.string("lastname");
    table.string("email");
    table.timestamps();
};

exports.up = function(knex, Promise) {
    return knex.schema.createTable('contacts', table)
        .then(() => {
            console.log("contacts created");
        });
};

exports.down = function(knex, Promise) {
    return knex.schema.dropTable('contacts', table)
        .then(() => {
            console.log('contacts table dropped');
        });
};
