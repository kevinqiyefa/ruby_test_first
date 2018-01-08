class RPNCalculator
  # TODO: your code goes here!
  attr_accessor :stack
  
  def initialize(arr =[])
     @stack =  arr
  end
  
  def push(n)
      @stack << n.to_f
  end
  
  def pop
     v = @stack.pop
     raise "calculator is empty" if v==nil
     v
  end
  
  def plus
      last = pop
      second_last = pop
      @stack << second_last + last
  end
     
  def minus
      last = pop
      second_last = pop
      @stack << second_last - last
  end
  
  def times
      last = pop
      second_last = pop
      @stack << second_last * last
  end
  
  def divide
      last = pop
      second_last = pop
      @stack << second_last / last
  end
  
     
  def value
      @stack[-1]
  end
  
  def tokens(str)
      operators = ["+", "-", "*", "/"]
      str.split.map do |s| 
          operators.include?(s)? s.to_sym : s.to_i 
      end
  end
  
  def evaluate(s)
      tokens(s).each do |n|
        case n
        when :+
          plus
        when :-
          minus
        when :*
          times
        when :/
          divide
        else
          push(n)
        end
      end
      value
  end
  
end
