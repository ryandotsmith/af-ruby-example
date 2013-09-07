$stdout.sync = true
loop do
  sleep(1)
  $stdout.puts("hello world. time=#{Time.now}")
end
