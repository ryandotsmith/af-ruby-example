$stdout.sync = true
require 'sinatra'
set(:port, Integer(ENV['PORT'] || 8000))

Thread.new do
  loop do
    sleep(1)
    $stdout.puts("heartbeat=#{Time.now}")
  end
end

get('/') {"hello world"}
