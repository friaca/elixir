defmodule Reverser do
  @doc """
  Reverse letters but keeps spaces & non-alphanumericals symbols in the same place

  iex> reverse_letters("z<*zj")
  j<*zz
  """

  def reverse_letters(string) do
    non_alpha = Regex.scan(~r/\W+/, string, return: :index) |> List.flatten()
    alpha = Regex.scan(~r/\w/, string)

    sorted = alpha
      |> List.flatten()
      |> Enum.reverse()

    Enum.reduce(non_alpha, sorted, fn {pos, len}, acc ->
      List.insert_at(acc, pos, String.slice(string, pos, len))
    end)
    |> Enum.join()
  end
end


Reverser.reverse_letters("z<*zj")
|> IO.inspect()
