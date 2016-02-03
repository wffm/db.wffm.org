"use strict";

var table = table => {
    table.increments().primary();
    table.string("name");
    table.string("person_name");
    table.string('email');
    table.string('address');
    table.string('url');
    table.string('bio');
    table.string('phone1');
    table.string('phone2');
    table.string('sales_tax_id');
    table.boolean('has_inspected_kitchen');
    table.boolean('active');
    table.boolean('is_new_application');
    table.boolean('is_craft_vendor');
    table.string('dates_unavailable');
    table.timestamps();
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
