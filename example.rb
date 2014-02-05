require './reprint'

console_line = ConsoleLine.new(STDOUT, 25) #25 is the width of the terminal. Too small and the message gets cut off, too large and it spreads to multiple lines

loop do
  console_line.reprint Time.now.to_s
  sleep(0.1)
end
