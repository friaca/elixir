defmodule Reverser do
  @doc """
  Reverses letters but keeps spaces & non-alpha symbols in the same place

  iex> reverse_letters("z<*zj")
  j<*zz
  """

  def reverse_letters(string) do
    non_alpha = Regex.scan(~r/\W+/, string, return: :index) |> List.flatten()
    reversed_alpha = Regex.scan(~r/\w/, string) |> List.flatten() |> Enum.reverse()

    Enum.reduce(non_alpha, reversed_alpha, fn {pos, len}, acc ->
      List.insert_at(acc, pos, String.slice(string, pos, len))
    end)
    |> Enum.join()
  end
end


Reverser.reverse_letters("z<*zj")
|> IO.inspect()
