# sd-6-drb-factorial-server.rb
require 'drb/drb'
require 'benchmark'

class MyRMIServer
  def factorial(n)
    Benchmark.bm do |b|
      puts "Client: #{Thread.current['DRb']['client'].peeraddr}"
      b.report("Factorial(#{n}!):") {

        if n.class != Integer
          n = n.to_i
        end
        (2...n).each { |i| n *= i }

      }
      return n.zero? ? 1 : n
    end
  end
end

def main
  host = 'localhost'
  port = 9999
  object = MyRMIServer.new
                    # (URI, Front, Config)
  DRb.start_service("druby://#{host}:#{port}", object)
  DRb.thread.join
end

main()