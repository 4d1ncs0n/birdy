# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :birdy,
  ecto_repos: [Birdy.Repo]

# Configures the endpoint
config :birdy, BirdyWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "wQOvuEpKJh0Lz3WH76JUbmBQWgn8AfDEDqAJ8hQ/Yn83wJyFucDzfmqlVBsfI6PL",
  render_errors: [view: BirdyWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Birdy.PubSub,
  live_view: [signing_salt: "9/Vg3byx"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
