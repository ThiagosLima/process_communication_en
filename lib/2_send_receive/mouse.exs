# mouse.exs
defmodule Cat do
  def create do
    receive do
      :hi -> IO.puts("Hey, what's up?")
    end
  end
end

# Here you create a cat
cat = spawn(Cat, :create, [])

# Send the message
send(cat, :hi)

# Rsult:
# "Hey, what's up?"
