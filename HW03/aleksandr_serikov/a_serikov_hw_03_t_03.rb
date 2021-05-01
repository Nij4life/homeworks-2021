require 'time'

def task3(logs)
  result = []
  
  times = logs.split("\n").select { |line| line[/Calling core with action:/] }.map { |log| log[/ ubuntu-xenial/]; Time.parse($`) }
  times.each_with_index { |time, i| result << (times[i + 1] - time).to_s if times[i + 1] }

  result.any? ? result : '0'
end

