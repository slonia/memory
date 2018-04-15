```
def with_memory_measure(&block)
  before = GetProcessMem.new.mb
  block.call
  after = GetProcessMem.new.mb
  puts "Memory before: #{before}, memory after: #{after}"
end
```

```
a = []
n.times do
  a << {a: 2}
end
```
```
10 times
Memory before: 9.0859375, memory after: 9.0859375
1000 times
Memory before: 9.0859375, memory after: 9.0859375
1000000 times
Memory before: 9.0859375, memory after: 227.47265625
```
