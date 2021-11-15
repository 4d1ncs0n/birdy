defmodule BirdyTest do
  use ExUnit.Case
  doctest Birdy

  test "greets the world" do
    assert Birdy.hello() == :world
  end
end
