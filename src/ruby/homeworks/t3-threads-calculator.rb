class CustomThread
  attr_accessor :after_iteration

  def initialize(mutex, iterations, name, operation, a, b, locked = true)
    @mutex = mutex
    @locked = locked

    @thread = Thread.new do
      result = a.send(operation, b)
      secs = rand(1..10)
      puts "Tempo que a thread #{name} irá dormir: #{secs}"

      i = 0
      while i < iterations do
        while @locked do
          sleep 0.1
        end

        @mutex.synchronize {
          sleep secs
          puts "[#{i+1}x] #{name}: #{result}"
        }

        lock
        after_iteration.call if after_iteration
        i += 1
      end
    end
  end

  def unlock
    @locked = false
  end

  def lock
    @locked = true
  end

  def join
    @thread.join
  end
end

def input(msg = "Input:", isInt = false)
  print "#{msg} "
  
  if (isInt == true)
    return gets.chomp.to_i
  end

  if (isInt == false)
    return gets.chomp.to_f
  end
end

def main()
  mutex = Mutex.new

  a = input('Insira o valor de A:')
  b = 0
  n = 0

  while b==0
    b = input('Insira o valor de B (B != 0):')
  end

  while !(n > 0)
    n = input('Insira o numero de execuções (N > 0):', true)
  end

  soma = CustomThread.new(mutex, n, 'SOMA', :+, a, b)
  subtracao = CustomThread.new(mutex, n, 'SUBTRAÇÃO', :-, a, b)
  multiplicacao = CustomThread.new(mutex, n, 'MULTIPLICAÇÃO', :*, a, b)
  divisao = CustomThread.new(mutex, n, 'DIVISÃO', :/, a, b)

  soma.after_iteration 		  = -> { subtracao.unlock }
  subtracao.after_iteration 	  = -> { multiplicacao.unlock }
  multiplicacao.after_iteration = -> { divisao.unlock }
  divisao.after_iteration 	  = -> { soma.unlock; puts }

  soma.unlock

  [soma, subtracao, multiplicacao, divisao].each(&:join)
end

main()