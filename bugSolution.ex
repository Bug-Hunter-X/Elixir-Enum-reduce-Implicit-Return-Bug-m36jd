```elixir
list = [1, 2, 3, 4, 5]

Enum.reduce(list, 0, fn x, acc ->
  if rem(x, 2) == 0 do
    acc + x
  else
    acc
  end
  # Explicit return statement added!
  acc  # The accumulator must be explicitly returned
end)
```