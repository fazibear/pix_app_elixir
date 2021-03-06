# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
use Mix.Config

# By default, the umbrella project as well as each child
# application will require this configuration file, ensuring
# they all use the same configuration. While one could
# configure all applications here, we prefer to delegate
# back to each application for organization purposes.

config :clock, :timezone, "Europe/Warsaw"
config :binary_clock, :timezone, "Europe/Warsaw"
config :nerves_network, regulatory_domain: "PL"

import_config "../apps/*/config/config.exs"

import_config "secrets.exs"

import_config "#{Mix.env()}.exs"
