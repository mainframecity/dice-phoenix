# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :dice,
  namespace: Dice

# Configures the endpoint
config :dice, Dice.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "FLrNumc0EG5MKZbg54fnF2n58X7CmcPyzOT3tEX4Ze10HuK3rjHwHxYbfsPSwSoU",
  render_errors: [view: Dice.ErrorView, accepts: ~w(json)],
  pubsub: [name: Dice.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
