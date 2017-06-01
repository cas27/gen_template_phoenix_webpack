use Mix.Config

# In this file, we keep production configuration that
# you'll likely want to automate and keep away from
# your version control system.
#
# You should document the content of this
# file or create a script for recreating it, since it's
# kept out of version control and might be hard to recover
# or recreate for your teammates (or yourself later on).
config :<%= @project_name %>, <%= @project_name_camel_case %>.Web.Endpoint,
  secret_key_base: "sCXSDzD3a6r1HBMhhRRYj76pOEzUtanp229oESvNpNv9025VmH+tpMHoHTrAI7FR"

# Configure your database
config :<%= @project_name %>, <%= @project_name_camel_case %>.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "<%= @project_name %>_prod",
  pool_size: 15
