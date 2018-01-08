class Temperature
  # TODO: your code goes here!
  def initialize(options = {})
    @fahrenheit = options[:f] || ctof(options[:c])
    @celsius = options[:c] || ftoc(options[:f])
  end
  
  def in_fahrenheit
    @fahrenheit
  end
  
  def in_celsius
    @celsius
  end
  
  def self.from_celsius(c)
     self.new(c: c)
  end
  
  def self.from_fahrenheit(f)
     self.new(f: f)
  end
  
  def ftoc(f)
      (f - 32) * (5/9.to_f)
  end
  
  def ctof(c)
      c * (9/5.to_f) + 32
  end
  
end

class Celsius < Temperature
    def initialize(c)
        super(c: c)
    end
end

class Fahrenheit < Temperature
    def initialize(f)
        super(f: f)
    end
end