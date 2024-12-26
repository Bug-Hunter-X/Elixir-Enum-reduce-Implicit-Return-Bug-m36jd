```elixir
list = [1, 2, 3, 4, 5]

Enum.reduce(list, 0, fn x, acc ->
  if rem(x, 2) == 0 do
    acc + x
  else
    acc
  end
  # Missing return statement here!
  # This will result in the last value evaluated in the if statement being implicitly returned.
  # Therefore, if the last element is odd, the sum will be incorrect
end)
```