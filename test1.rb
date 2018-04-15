require "get_process_mem"

def with_memory_measure(&block)
  before = GetProcessMem.new.mb
  block.call
  after = GetProcessMem.new.mb
  puts "Memory before: #{before}, memory after: #{after}"
end

with_memory_measure do
  n = 10
  puts "#{n} times"
  a = []
  n.times do
    a << {a: 2}
  end
end

with_memory_measure do
  n = 1000
  puts "#{n} times"
  a = []
  n.times do
    a << {a: 2}
  end
end

with_memory_measure do
  n = 1_000_000
  puts "#{n} times"
  a = []
  n.times do
    a << {a: 2}
  end
end
