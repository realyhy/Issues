defmodule Issues.Mixfile do
  use Mix.Project

  def project do
    [app: :issues,
     escript: escript_config,
     version: "0.0.1",
     name: "Issues",
     source_url: "https://github.com/insanitariume/issues",
     elixir: "~> 1.2",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    [applications: [:logger, :httpoison]]
  end

  # Dependencies can be Hex packages:
  #
  #   {:mydep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:mydep, git: "https://github.com/elixir-lang/mydep.git", tag: "0.1.0"}
  #
  # Type "mix help deps" for more examples and options
  defp deps do
    [
      httpoison: "~> 0.8",
      poison: "~> 1.5",
      ex_doc: "~> 0.11",
      earmark: ">= 0.0.0"
    ]
  end

  defp escript_config do
    [main_module: Issues.CLI]
  end
end
