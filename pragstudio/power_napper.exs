parent = self()

power_nap = fn ->
  time = :rand.uniform(10_000)
  :timer.sleep(time)
  time
end

spawn(fn ->
  time_slept = power_nap.()
  send(parent, {:slept, time_slept})
end)

receive do
  {:slept, time} -> IO.puts("Slept for #{time} ms")
end
