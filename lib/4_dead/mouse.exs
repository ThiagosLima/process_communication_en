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

IO.puts("Is the cat alive? #{Process.alive?(cat)}")

# Send the message
send(cat, {:how_is_it_going, mouse})

# Look in the mouse's mailbox
receive do
  :good -> IO.puts("Nice!")
end

IO.puts("Is the cat alive? #{Process.alive?(cat)}")

# Result:
# Is the cat alive? true
# Nice!
# Is the cat alive? false
