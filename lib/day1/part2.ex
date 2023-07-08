defmodule AdventOfCode.Day1.D1P2 do
  def fd_top3_calories do
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
      |> Enum.sort(:desc)
      |> my_take_fn(3)
      |> Enum.sum()

    {:ok, result}
  end

  def my_take_fn([]), do: []
  def my_take_fn([_head | _tail], 0), do: []
  def my_take_fn [first | list], num do
    [first | my_take_fn(list, num - 1)]
  end
end
