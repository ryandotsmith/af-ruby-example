$stdout.sync = true
require "socket"

Thread.new.do
  loop do
    sleep(1)
    $stdout.puts("hello world. time=#{Time.now}")
  end
end

 
webserver = TCPServer.new('localhost', Integer(ENV['PORT'] || 8000))
while (session = webserver.accept)
  session.write(Time.now)
  session.print("Hello World!")
  session.close
end
