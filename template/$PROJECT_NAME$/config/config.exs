# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :<%= @project_name %>,
  ecto_repos: [<%= @project_name_camel_case %>.Repo]

# Configures the endpoint
config :<%= @project_name %>, <%= @project_name_camel_case %>.Web.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "OHrBVBqzpgIaOOOdYTNl6Pf3ZF5WnurRW32w5YVaxfV0Zz2bCEo+anYmUeexAI8h",
  render_errors: [view: <%= @project_name_camel_case %>.Web.ErrorView, accepts: ~w(html json)],
  pubsub: [name: <%= @project_name_camel_case %>.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
