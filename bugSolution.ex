```elixir
list = [1, 2, 3, 4, 5]

# Solution 1: Using Enum.map and List Comprehension
result = Enum.map(list, fn x ->
  if x == 3 do
    {:error, :three_found}  # Custom error tuple
  else
    x
  end
end)

IO.inspect(result)

# Solution 2: Using try-catch block
try do
  Enum.each(list, fn x ->
    if x == 3 do
      throw(:three_found)
    end
    IO.puts(x)
  end)
catch
  :three_found -> IO.puts("Found 3, stopping further processing.")
end
```