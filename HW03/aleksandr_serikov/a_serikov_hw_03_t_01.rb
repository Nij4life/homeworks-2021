def task1(logs)
  logs.split("\n").find { |line| line[/error/] } || ''
end

