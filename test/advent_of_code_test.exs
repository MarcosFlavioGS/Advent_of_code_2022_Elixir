defmodule AdventOfCodeTest do
  use ExUnit.Case
  doctest AdventOfCode

  test "greets the world" do
    assert AdventOfCode.main() == :ok
  end

  test "day 1, Part 1" do
    assert AdventOfCode.fd_most_calories() == 42
  end
end
