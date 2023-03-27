defmodule Darts do
  @type position :: {number, number}

  @doc """
  Calculate the score of a single dart hitting a target
  """
  @spec score(position) :: integer
  def score({x, y}) do
    dist = :math.sqrt(x * x + y * y)

    case dist do
      _x when dist<= 1 -> 10
      _x when dist<= 5 -> 5
      _x when dist<= 10 -> 1
      _ -> 0
    end
  end
end
