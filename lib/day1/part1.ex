defmodule AdventOfCode.Day1.Part1 do
  def fd_most_calories do
    File.read!("inputs/day1.txt")
    |> String.split("\n")
    |> Enum.chunk_by(fn(x) -> String.length(x) == 0 end)
    |> Enum.take_every(2)
    |> IO.inspect()
    {:ok, 42}
  end
end
