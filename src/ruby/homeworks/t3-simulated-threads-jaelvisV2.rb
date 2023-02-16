def inputHandle(msg = "Input:", isInt = false)
  print "#{msg} "
  
  if (isInt == true)
    return gets.chomp.to_i
  end

  if (isInt == false)
    return gets.chomp.to_f
  end
end

def createThread(ops, n, a, b)
  ops.each do |op, op_properties_lst| 
    doOperation(op, op_properties_lst[0], op_properties_lst[1], n, a, b)
  end
end

def doOperation(operation, name, sleepSeconds, n, a, b)
  semaphore = Mutex.new

  Thread.new do
    semaphore.synchronize {
      sleep(sleepSeconds)
      
      puts "[#{n}x] #{name}: #{a.send(operation, b)}"
    }
  end.join
end

def main
  n = 0
  a = 0
  b = 0

  while !(n > 0)
    n = inputHandle("Deseja executar quantas vezes (N > 0)?", true)
  end

  a = inputHandle("Digite o valor de A:")
  while (b == 0)
    b = inputHandle("Digite o valor de B (B != 0):")
  end

  puts "\nExecuções:  #{n}x,\nValor de A: #{a},\nValor de B: #{b} \n\n"

  sleepLimit = 10
  ops = {
    :+ => ["SOMA", rand(1..sleepLimit)],
    :- => ["SUBTRACAO", rand(1..sleepLimit)],
    :* => ["MULTIPLICACAO", rand(1..sleepLimit)],
    :/ => ["DIVISAO", rand(1..sleepLimit)]
  }

  ops.map { |op, op_properties_lst| puts "Tempo que a thread #{op_properties_lst[0]} irá dormir: #{op_properties_lst[1]}" }
  puts "\n"

  n.times { |n| createThread(ops, (n+1), a, b); puts "\n" }

end

main()