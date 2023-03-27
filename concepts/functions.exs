# Anonymous functions
add = fn a, b -> a + b end
# Invoking anonymous functions with a dot is mandatory
IO.puts(add.(1, 2))
