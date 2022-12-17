ExUnit.start(
  capture_log: true,
  assert_receive_timeout: 1000
)

Code.require_file("../../test/test_support.exs", __DIR__)

defmodule TestPool do
  use TestConnection, pool: DBConnection.ConnectionPool, pool_size: 1
end
