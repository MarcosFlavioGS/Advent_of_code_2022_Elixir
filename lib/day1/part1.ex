defmodule AdventOfCode.Day1.Part1 do
  def fd_most_calories do
    result =
      File.read!("inputs/day1.txt")
      |> String.split("\n")
      |> Enum.chunk_by(fn x ->
        String.length(x) == 0
      end)
      |> Enum.take_every(2)
      |> Enum.map(fn list ->
        Enum.map(list, fn x ->
          Integer.parse(x) |> elem(0)
        end)
      end)
      |> Enum.map(fn list ->
        Enum.reduce(list, fn x, y ->
          x + y
        end)
      end)
      |> Enum.reduce(fn x, y ->
        if x > y, do: x, else: y
      end)

    {:ok, result}
  end
end
