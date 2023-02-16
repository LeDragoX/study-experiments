def thr1()
    thread = Thread.new do
        puts "|thr1| Thread[#{thread.object_id}]: Initialized!"
        3.times do |value|
            puts "|thr1| Thread[#{thread.object_id}]: #{value+1}"
            sleep 0.1
        end
    end
    
    puts "|thr1| Thread[#{thread.object_id}]: already created!"
    thread.join
end

def thr2()
    thread = Thread.new do
        puts "|thr2| Thread[#{thread.object_id}]: Initialized!"
        5.times do |value|
            puts "|thr2| Thread[#{thread.object_id}]: #{value}"
            sleep 1
        end
    end
    
    puts "|thr2| Thread[#{thread.object_id}]: already created!"
    thread.join(1)  # Timeout
end

def thr3()
    proc = Proc.new do |parameter|
        parameter.times do |value|
            print "|thr3| [#{value + 1}/#{parameter}]\n"
            sleep 0.5
        end
    end
    
    thread = nil
    5.times do |value|
        thread = Thread.new(value, &proc)
        puts "|thr3| New Thread: [#{thread.object_id}]"
    end
    
    thread.join
    puts "|thr3| Thread[#{thread.object_id}]: Terminated!"
end

thr1()
thr2()
thr3()