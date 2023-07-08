defmodule AdventOfCode.Day1.D1P1 do
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
        Enum.reduce(list, &(&1 + &2))
      end)
      |> Enum.reduce(&(if &1 > &2, do: &1, else: &2))

    {:ok, result}
  end
end
