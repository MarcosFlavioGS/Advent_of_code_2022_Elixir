defmodule AdventOfCode.Day1.Part1 do
  def fd_most_calories do
    file_content = File.read! "inputs/day1.txt"
    lines = String.split file_content, "\n"
    IO.inspect lines
    {:ok, 42}
  end
end
