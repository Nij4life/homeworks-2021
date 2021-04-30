def task2(logs)
  regexp = /^(\d{2}\.\d\.\d{3}\.\d{3}).*(\[.*\]) "POST (.*) HTTP/
  logs.split("\n").select { |line| line[regexp] }.map { |line| line[regexp]; "#{$2} FROM: #{$1} TO: #{$3.upcase}" }
end

