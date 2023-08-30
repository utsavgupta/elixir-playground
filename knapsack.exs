defmodule Knapsack do

  def solve(c, wt, val, n), do: calc(c, wt, val, n)

  defp calc(0, _, _, _), do: 0

  defp calc(_, _, _, 0), do: 0

  defp calc(c, [w|wt], [v|val], n) when c-w >= 0 do
    [v + calc(c-w, wt, val, n-1), calc(c, wt, val, n-1)] |> Enum.max
  end

  defp calc(c, [_|wt], [_|val], n), do: calc(c, wt, val, n-1)
end

Knapsack.solve(4, [5,4,1], [1, 2, 3], 3) |> IO.puts
