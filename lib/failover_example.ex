defmodule FailoverExample do
  use Application
  require Logger

  def start(type, _args) do
    import Supervisor.Spec, warn: false

    Logger.info "Started FailoverExample here with type #{inspect type}"

    children = [ worker(FailoverExample.SimpleServer, []) ]
    opts = [ strategy: :one_for_one, name: FailoverExample.Supervisor ]

    Supervisor.start_link(children, opts)
  end
end
