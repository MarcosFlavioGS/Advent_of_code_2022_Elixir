defmodule AdventOfCodeTest do
  use ExUnit.Case
  doctest AdventOfCode

  test "main function" do
    assert AdventOfCode.main() == :ok
  end

  test "Day 1, Part 1" do
    assert AdventOfCode.Day1.Part1.fd_most_calories() == {:ok, 71934}
  end
   test "Day 1, Part 2" do
    assert AdventOfCode.Day1.Part2.fd_top3_calories() == {:ok, 211447}
  end
end
