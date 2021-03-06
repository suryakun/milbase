# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :milbase,
  ecto_repos: [Milbase.Repo]

# Configures the endpoint
config :milbase, MilbaseWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "BNyqAOqBmAfJwVtUKB1HU9Oqqqs2izC49a0DYlH5BV4hZiXCNxnAxw0BBAzgTinU",
  render_errors: [view: MilbaseWeb.ErrorView, accepts: ~w(json)],
  pubsub: [name: Milbase.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Guardian config detail
#
config :milbase, Milbase.Guardian,
  issuer: "milbase",
  secret_key: "y5lm4DHmFUP/LJxwP7dtTO8OPiC8SWGZ7Ev7zB0dQcRZL4Nn6fs1HIck0sAQDpKf"

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"

