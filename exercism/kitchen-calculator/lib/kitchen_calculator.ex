defmodule KitchenCalculator do
  def get_volume({_, volume}), do: volume

  def to_milliliter({unit, value}) do
    case unit do
      :cup -> {:milliliter, value * 240}
      :fluid_ounce -> {:milliliter, value * 30}
      :teaspoon -> {:milliliter, value * 5}
      :tablespoon -> {:milliliter, value * 15}
      _ -> {:milliliter, value}
    end
  end

  def from_milliliter({_, value}, unit) do
    case unit do
      :cup -> {:cup, value / 240}
      :fluid_ounce -> {:fluid_ounce, value / 30}
      :teaspoon -> {:teaspoon, value / 5}
      :tablespoon -> {:tablespoon, value / 15}
      default -> {default, value}
    end
  end

  def convert(volume_pair, unit) do
    to_milliliter(volume_pair)
    |> from_milliliter(unit)
  end
end
