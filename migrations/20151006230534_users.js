var table = table => {
    table.increments().primary();
    table.string('email');
    table.string('password');
    table.integer('sign_in_count');
    table.timestamp('last_sign_in_at');
    table.timestamp('current_sign_in_at');
    table.integer('vendor_id').references('vendors.id');
    table.string('api_key');
    table.timestamps();
}
exports.up = function(knex, Promise) {
    return knex.schema.createTable('users', table)
        .then(() => {
            console.log("created users table");
        });
};

exports.down = function(knex, Promise) {
    return knex.schema.dropTable('users', table)
        .then(() => {
            console.log("drop users table");
        });
};
