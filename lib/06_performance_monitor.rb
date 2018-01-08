def measure(n = 1)
    
    start_time = Time.now
    n.times do
        yield
    end
    end_time = Time.now
    (end_time - start_time) /n
    
end