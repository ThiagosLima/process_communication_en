# mouse.exs
defmodule Cat do
  def create do
    receive do
      :how_is_it_going -> IO.puts("Good!")
    end
  end
end

# Here you create a cat
cat = spawn(Cat, :create, [])

# Send the message
send(cat, :how_is_it_going)

# Result:
# "Good!"
