# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :quantum_demo,
  ecto_repos: [QuantumDemo.Repo]

# Configures the endpoint
config :quantum_demo, QuantumDemoWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "tUpUEhIySB1/8WOVPnx4k1J3SBokWeEZPe0vSoyBrSi+dCDLz9OBsdO8CcpKApx5",
  render_errors: [view: QuantumDemoWeb.ErrorView, accepts: ~w(json)],
  pubsub: [name: QuantumDemo.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

config :quantum_demo, QuantumDemo.Scheduler,
  jobs: [
    {"* * * * *", {IO, :inspect, [:beep]}}
    # Every minute
    # {"* * * * *",      {Heartbeat, :send, []}}
  ]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
