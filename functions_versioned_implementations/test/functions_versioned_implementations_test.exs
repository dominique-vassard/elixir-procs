defmodule FunctionsVersionedImplementationsTest do
  use ExUnit.Case
  doctest FunctionsVersionedImplementations

  test "greets the world" do
    assert FunctionsVersionedImplementations.hello() == :world
  end
end
