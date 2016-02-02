'use strict';

exports.seed = function(knex, Promise) {
  return Promise.join(
    // Deletes ALL existing entries
    knex('contacts').del(),

    // Inserts seed entries
      knex('contacts').insert({id: 1, email: 'testcontact@tests.com', firstname: 'howdy', lastname: 'hoe'})
  );
};
