defmodule AdventOfCode do
  alias AdventOfCode.Day1.{D1P1, D1P2}
  alias AdventOfCode.Day2.D2P1

  def main do
    IO.puts("This is my Elixir Advent of code solutions.")

    IO.puts("Day 1\n*---------------*")
    IO.puts("Part 1:")
    {:ok, d1P1} = D1P1.fd_most_calories()
    IO.puts("Answer: #{d1P1}")
    IO.puts("Part 2:")
    {:ok, d1P2} = D1P2.fd_top3_calories()
    IO.puts("Answer: #{d1P2}")

    IO.puts("Day 2\n*---------------*")
    IO.puts("Part 1:")
    {:ok, d2P1} = D2P1.get_total_score()
    IO.puts("Answer: #{d2P1}")
    :ok
  end
end
