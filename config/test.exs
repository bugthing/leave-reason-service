use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :leave_reason_service, LeaveReasonService.Endpoint,
  http: [port: 4001],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :leave_reason_service, LeaveReasonService.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "leave_reason_service_test",
  hostname: "0.0.0.0",
  pool: Ecto.Adapters.SQL.Sandbox
