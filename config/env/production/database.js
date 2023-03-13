module.exports = ({ env }) => ({
  connection: {
    client: "postgres",
    connection: {
      host: env("PGHOST", "containers-us-west-203.railway.app"),
      port: env.int("PGPORT", 6765),
      database: env("PGDATABASE", "railway"),
      user: env("PGUSER", "postgres"),
      password: env("PGPASSWORD", "dtIhoID27OS3yse8djX3"),
      ssl: env.bool(true),
    },
  },
});
