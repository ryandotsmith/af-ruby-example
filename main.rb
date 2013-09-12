$stdout.sync = true
require 'sinatra'

Thread.new do
  loop do
    sleep(1)
    $stdout.puts("heartbeat=#{Time.now}")
  end
end

get('/') {"hello world"}
