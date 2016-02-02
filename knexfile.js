// Update with your config settings.
module.exports = {

  development: {
    client: 'postgresql',
    connection: {
        database: "market_api",
        user: "market_api",
        password: "password",
        host: "10.0.3.17",
        port: 5432
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
