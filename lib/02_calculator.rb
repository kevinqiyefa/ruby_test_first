def add(x,y)
    x + y
end

def subtract(x,y)
    x - y
end

def sum(a)
    a.inject(:+) || 0
end

def multiply(a)
    a.inject(:*)
end

def power(x,y)
    x ** y
end

def factorial(n)
    (1..n).inject(:*) || 1
end
