// Update with your config settings.
module.exports = {

  development: {
    client: 'postgresql',
    connection: {
        database: "market_api",
        user: "adam",
        password: "password"
    },
      pool: {
          min: 2,
          max: 10
      },
      migrations: {
          tableName: 'market_api_migrations'
      }
  },

  staging: {
    client: 'postgresql',
    connection: {
      database: 'my_db',
      user:     'username',
      password: 'password'
    },
    pool: {
      min: 2,
      max: 10
    },
    migrations: {
      tableName: 'knex_migrations'
    }
  },

  production: {
    client: 'postgresql',
    connection: {
      database: 'my_db',
      user:     'username',
      password: 'password'
    },
    pool: {
      min: 2,
      max: 10
    },
    migrations: {
      tableName: 'knex_migrations'
    }
  }

};
