defmodule AdventOfCode.Day2.D2P1 do
  def get_total_score do
    result =
    File.read!("inputs/day2.txt")
    |> String.split("\n")
    |> IO.inspect()
    {:ok, 42}
  end
end
