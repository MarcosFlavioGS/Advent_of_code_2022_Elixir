defmodule AdventOfCode.Day2.D2P1 do
  def get_total_score do
    result =
    File.read!("inputs/day2.txt")
    |> String.split("\n")
    |> List.delete("")
    |> get_results()
    |> Enum.sum()
    {:ok, result}
  end

  defp get_results([]), do: []
  defp get_results [first|list] do
    result =
    String.split(first, " ")
    |> get_play_result()
    [result | get_results(list)]
  end

  defp get_play_result [oponent, player] do
    case {oponent, player} do
      {"A", "X"} -> 3 + 1
      {"A", "Y"} -> 6 + 2
      {"A", "Z"} -> 0 + 3
      {"B", "X"} -> 0 + 1
      {"B", "Y"} -> 3 + 2
      {"B", "Z"} -> 6 + 3
      {"C", "X"} -> 6 + 1
      {"C", "Y"} -> 0 + 2
      {"C", "Z"} -> 3 + 3
      _ -> 0
    end
  end
end
