defmodule FailoverExample.SimpleServer do
  use GenServer

  def start_link do
    GenServer.start_link(__MODULE__, [], name: {:global, :server})
  end

  def handle_call({:hello, "crash"}, _from, _state) do
    raise "oops..."
  end

  def handle_call({:hello, name}, _from, _state) do
    {:reply, "Hello #{name}", _state}
  end

end
