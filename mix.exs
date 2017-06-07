defmodule GenTemplatePhoenixWebpack.Mixfile do
  use Mix.Project

  @name    :gen_template_phoenix_webpack
  @version "0.1.0"

  @deps [
    { :mix_templates,  ">0.0.0",  app: false },
    { :ex_doc,         ">0.0.0",  only: [:dev, :test] },
  ]

  @maintainers ["Cory Schmitt <cory@schmitty.me>"]
  @github      "https://github.com/cas27/#{@name}"

  @description """
  Phoenix 1.3 and Webpack 2
  """
  
  # ------------------------------------------------------------
  
  def project do
    in_production = Mix.env == :prod
    [
      app:     @name,
      version: @version,
      deps:    @deps,
      elixir:  "~> 1.4",
      package: package(),
      description:     @description,
      build_embedded:  in_production,
      start_permanent: in_production,
    ]
  end

  defp package do
    [
      name:        @name,
      files:       ["lib", "mix.exs", "README.md", "LICENSE.md", "template"],
      maintainers: @maintainers,
      licenses:    ["MIT"],
      links:       %{
        "GitHub" => @github,
      },
#      extra:       %{ "type" => "a_template_for_mix_gen" },
    ]
  end
  
end
