def calcAndSave(processor_number, sequential_portion, formula, file_name, columns)
  # puts "#{processor_number}, #{sequential_portion}, #{"%.2f" % formula.call(processor_number[0], sequential_portion[0])}, #{file_name}, #{columns}"
  puts "#{file_name.capitalize()}'s Law"
  puts "==========================================================="
  puts "#{columns[0]} | #{columns[1]} | #{columns[2]} | #{columns[3]} | #{columns[4]} | #{columns[5]} |"
  puts "==========================================================="
  speedups = []
  processed_speedups = []

  # Run from the Project's root directory
  File.open("./data/#{file_name.downcase()}.csv", "w+") do |file|
    file.write("#{columns[0]}, #{columns[1]}, #{columns[2]}, #{columns[3]}, #{columns[4]}, #{columns[5]}\n")
    processor_number.map() do |processor_number|
      sequential_portion.map() do |sequential_portion|
        speedups << formula.call(processor_number, sequential_portion)
      end

      print "     #{processor_number}       |" if (processor_number < 10)
      print "     #{processor_number}      |" if (processor_number >= 10 && processor_number < 100)
      print "     #{processor_number}     |" if (processor_number >= 100)
      speedups.map() do |speedup|
        print " #{"%.2f" % speedup}%  |" if (speedup < 10)
        print " #{"%.2f" % speedup}% |" if (speedup >= 10 && speedup < 100)
        processed_speedups << "%.2f" % speedup
      end
      puts
      file.write("#{processor_number}, ")
      processed_speedups.each_index() do |i|
        file.write("#{processed_speedups[i]}, ") if (processed_speedups[i] != processed_speedups[-1])
        file.write("#{processed_speedups[i]}") if (processed_speedups[i] === processed_speedups[-1])
      end
      file.write("\n")
      # Clear the lists
      speedups.clear && processed_speedups.clear
    end
  end
end

def main()
  file_names = ["amdahl", "gustafson"]
  columns = ["N_Processors", "Seq05%", "Seq10%", "Seq50%", "Seq70%", "Seq90%"]
  # Processors number
  processor_number   = [2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 30, 40, 50, 80, 100]
  # In % sequential portion
  sequential_portion = [0.05, 0.1, 0.5, 0.7, 0.9]
  # Amdahl's formula
  formula_amdahl = lambda { |n, s| ( 1 / (s + ((1 - s) / n )) ).round(2) }
  # Gustafson's formula
  formula_gustafson = lambda { |n, alpha| ( n + (alpha * (1 - n)) ).round(2) }

  calcAndSave(processor_number, sequential_portion, formula_amdahl, file_names[0], columns)
  calcAndSave(processor_number, sequential_portion, formula_gustafson, file_names[1], columns)
end

main()
