defmodule ProcessCommunicationEnTest do
  use ExUnit.Case
  doctest ProcessCommunicationEn

  test "greets the world" do
    assert ProcessCommunicationEn.hello() == :world
  end
end
