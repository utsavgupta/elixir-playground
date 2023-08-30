# Solution to the 0-1 Knapsack problem using recursive functions
defmodule Knapsack do

  # c = capacity, wt = weights, v = values
  def solve(c, wt, val), do: calc(c, wt, val)

  defp calc(0, _, _), do: 0

  defp calc(_, [], []), do: 0

  defp calc(c, [w|wt], [v|val]) when c-w >= 0 do
    [v + calc(c-w, wt, val), calc(c, wt, val)] |> Enum.max
  end

  defp calc(c, [_|wt], [_|val]), do: calc(c, wt, val)
end

Knapsack.solve(4, [5,4,1], [1, 2, 3]) |> IO.puts
