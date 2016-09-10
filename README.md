# FailoverExample

This is a simple exaple that show how failover works in erlang/elixir.
In the config folder there are two files: foo.config and bar.config

```
1.
mix compile
iex --sname foo -pa _build\dev\lib\failover_example\ebin\ --app failover_example --erl "-config config/foo"
:global.whereis_name(:server)
GenServer.call({:global, :server}, {:hello, "joey"})

2.
iex --sname bar -pa _build\dev\lib\failover_example\ebin\ --app failover_example --erl "-config config/bar"
:global.whereis_name(:server)
GenServer.call({:global, :server}, {:hello, "joey"})

```
