defmodule AdventOfCodeTest do
  use ExUnit.Case
  doctest AdventOfCode

  test "greets the world" do
    assert AdventOfCode.main() == :ok
  end

  test "day 1, Part 1" do
    assert AdventOfCode.Day1.Part1.fd_most_calories() == {:ok, 71934}
  end
end
