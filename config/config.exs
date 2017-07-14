# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :rldn,
  ecto_repos: [Rldn.Repo]

# Configures the endpoint
config :rldn, Rldn.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "8nSfA5TDz9BE6AMbZROapvX/8OnCZzePc8CYko3QWiwwFJv9XhBfZKp9EPMSmSzd",
  render_errors: [view: Rldn.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Rldn.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
