use Mix.Config

config :lifehope_attendance, LifehopeAttendance.Endpoint,
  http: [port: {:system, "PORT"}],
  url: [host: "lifehope-attendance.herokuapp.com", port: 443],
  url: [scheme: "https", host: "lifehope-attendance.herokuapp.com", port: 443],
  force_ssl: [rewrite_on: [:x_forwarded_proto]],
  cache_static_manifest: "priv/static/manifest.json",
  secret_key_base: System.get_env("SECRET_KEY_BASE")

config :logger, level: :info

config :lifehope_attendance, LifehopeAttendance.Repo,
  adapter: Ecto.Adapters.Postgres,
  url: System.get_env("DATABASE_URL"),
  pool_size: String.to_integer(System.get_env("POOL_SIZE") || "10"),
  ssl: true

# import_config "prod.secret.exs"
