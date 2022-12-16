# Elixir interprets array with integers as codepoints when displaying to output
# But they are still normal integers
ascii_inclusive = [99, 97, 116]
ascii_mapped = Enum.map(ascii_inclusive, fn x -> x * 2 end)
concatenated = [1, 2, 3] ++ [4, 5,6]

# Outputs "cat"
IO.puts(ascii_inclusive)
# Outputs gibberish
IO.puts(ascii_mapped)
# Outputs correct integer (99 * 2 = 198)
IO.puts(Enum.at(ascii_mapped, 0))
# To view the internal representation of values, use IO.inspect
IO.inspect(concatenated)
