"use strict";

exports.seed = function(knex, Promise) {
  return Promise.join(
    // Deletes ALL existing entries
    knex('scopes').del(),

    // Inserts seed entries
    knex('scopes').insert({id: 1, name: 'admin'}),
    knex('scopes').insert({id: 2, name: 'vendor'}),
    knex('scopes').insert({id: 3, name: 'user'})
  );
};
