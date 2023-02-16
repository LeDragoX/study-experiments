# ruby 20-errors.rb

nums = ["oof"]

begin
    nums["oof"]
    num = 10 / 0
rescue ZeroDivisionError => e1
    puts(e1)
rescue TypeError => e2
    puts(e2)
end