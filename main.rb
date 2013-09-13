$stdout.sync = true
require 'sinatra'
set(:bind, '0.0.0.0')
set(:port, Integer(ENV['PORT'] || 8000))

Thread.new do
  loop do
    sleep(1)
    $stdout.puts("heartbeat=#{Time.now}")
  end
end

get '/' do
  $stdout.puts("at=service-request")
  "hello world\n"
end
