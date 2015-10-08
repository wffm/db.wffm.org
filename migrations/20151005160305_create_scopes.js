"use strict";

var table = table => {
    table.increments().primary();
    table.string("name");
    table.timestamps();
};

exports.up = function(knex, Promise) {
    return knex.schema.createTable('scopes', table)
        .then(() => {
            console.log("Created scopes table");
        });
};

exports.down = function(knex, Promise) {
    return knex.schema.dropTable('scopes', table)
        .then(() => {
            console.log("drop scopes table");
        });
};
