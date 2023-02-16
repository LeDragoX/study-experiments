# Adapted from: https://gist.github.com/giancarlopro/995904df8da1640b2bd510ed09f48ff1

def input(msg)
  print msg
  gets.chomp.to_i
end

def create_thread(a, b, operation, name)
  Thread.new do
    result = a.send(operation, b)
    secs = rand(1..20)

    puts "Eu sou a Thread[#{self.object_id}] #{name} (#{result}) e vou dormir por #{secs} segundos!"
    sleep secs
    puts "Eu sou a Thread[#{self.object_id}] #{name} (#{result}). Já se passaram #{secs} segundos, então terminei!"
  end
end

a = input('Insira o valor de a: ')
b = input('Insira o valor de b: ')

while b==0
    puts "O valor de não pode ser igual ao valor 0."
    b = input('Insira o valor de b: ')
end

{ :+ => 'SOMA', :- => 'SUBTRAÇÃO', :/ => 'DIVISÃO', :* => 'MULTIPLICAÇÃO' }
  .map { |op, name| create_thread(a, b, op, name) }
  .each(&:join)