defmodule Jamdb.Oracle.Mixfile do
  use Mix.Project

  def project do
    [app: :jamdb_oracle,
     version: "0.2.7",
     elixir: "~> 1.4",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     description: description(),
     package: package(),
     deps: deps()]
  end

  defp deps do
    [
      {:ecto, "~> 2.1"},
      {:db_connection, "~> 1.1"},
      {:ex_doc, "~> 0.19", only: :docs}
    ]
  end

  defp description do
    "Erlang driver and Ecto adapter for Oracle"
  end

  defp package do
    [files: ["src","include","lib","mix.exs"],
    maintainers: ["Mykhailo Vstavskyi","Sergiy Kostyushkin"],
    licenses: ["MIT"],
    links: %{"Github" => "https://github.com/erlangbureau/jamdb_oracle"}]
  end
end
