# mouse.exs
defmodule Cat do
  def create do
    receive do
      {:how_is_it_going, sender} -> send(sender, :good)
    end
  end
end

# This is you
mouse = self()

# Here you create a cat
cat = spawn(Cat, :create, [])

# Send the message
send(cat, {:how_is_it_going, mouse})

# Look in the mouse's mailbox
receive do
  :good -> IO.puts("Nice!")
end

# Result:
# "Nice!"
