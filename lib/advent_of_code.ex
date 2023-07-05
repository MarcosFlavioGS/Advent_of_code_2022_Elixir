defmodule AdventOfCode do
  alias AdventOfCode.Day1.{Part1, Part2}

  def main do
    IO.puts("This is my Elixir Advent of code solutions.")
    IO.puts("Day 1\n*---------------*")
    IO.puts("Part 1:")
    {:ok, d1P1} = Part1.fd_most_calories()
    IO.puts("Answer: #{d1P1}")
    IO.puts("Part 2:")
    {:ok, d1P2} = Part2.fd_top3_calories()
    IO.puts("Answer: #{d1P2}")
    :ok
  end
end
