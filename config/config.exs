# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

config :leave_reason_service, LeaveReasonService.Repo,
  adapter: Ecto.Adapters.Postgres,
  database: "leave_reason_service_repo",
  username: "user",
  password: "pass",
  hostname: "localhost"


# General application configuration
config :leave_reason_service,
  ecto_repos: [LeaveReasonService.Repo]

# Configures the endpoint
config :leave_reason_service, LeaveReasonService.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "HUlKGMFCqAXbdf1fSInSNewF4XWBAWIp7r9fwHb+KufAP6zfPO12A/RXubTf5EC6",
  render_errors: [view: LeaveReasonService.ErrorView, accepts: ~w(json)],
  pubsub: [name: LeaveReasonService.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
