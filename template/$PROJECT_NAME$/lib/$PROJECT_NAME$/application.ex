defmodule <%= @project_name_camel_case %>.Application do
  use Application

  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  def start(_type, _args) do
    import Supervisor.Spec

    # Define workers and child supervisors to be supervised
    children = [
      # Start the Ecto repository
      supervisor(<%= @project_name_camel_case %>.Repo, []),
      # Start the endpoint when the application starts
      supervisor(<%= @project_name_camel_case %>.Web.Endpoint, []),
      # Start your own worker by calling: <%= @project_name_camel_case %>.Worker.start_link(arg1, arg2, arg3)
      # worker(<%= @project_name_camel_case %>.Worker, [arg1, arg2, arg3]),
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: <%= @project_name_camel_case %>.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
