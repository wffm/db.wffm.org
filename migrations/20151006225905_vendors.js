"use strict";

var table = table => {
    table.increments().primary();
    table.string("name");
    table.string('email');
    table.string('address');
    table.string('url');
    table.string('bio');
    table.string('phone1');
    table.string('phone2');
    table.boolean('active');
    table.timestamps();
    table.boolean('is_new_application');
    table.boolean('is_craft_vendor');
    table.string('dates_unavailable');
};

exports.up = function(knex, Promise) {
    return knex.schema.createTable('vendors', table)
        .then(() => {
            console.log("created vendors table");
        });
};

exports.down = function(knex, Promise) {
    return knex.schema.dropTable('vendors', table)
        .then(() => {
            console.log('vendors table dropped');
        });
};
