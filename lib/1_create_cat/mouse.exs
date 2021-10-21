# mouse.exs
defmodule Cat do
  def create do
    IO.puts("You create cat")
  end
end

# Here you create a cat
spawn(Cat, :create, [])

# Result:
# "You create cat"
