class Dictionary
  # TODO: your code goes here!
  attr_accessor :entries
  def initialize(n = {})
      @entries = n
  end
  
  def add(entry)
      entry = {entry => nil} if entry.class == String
      entry.each do |key, value|
        @entries[key] = value
      end
  end
  
  def keywords
      @entries.keys.sort
  end
  
  def include?(key)
      keywords.include?(key)
  end
  
  def find(input) 
    result = {}
    @entries.each{|k, v| 
    
    if k.start_with?(input)
      result[k] = @entries[k] 
    end
    }
    result
  end
  
  def printable
    output = []
    @entries.sort.each{|k, v|
      output << "[#{k}] \"#{v}\""
    }
    output.join("\n")
  end
  
end
