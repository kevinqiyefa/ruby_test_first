class Book
  # TODO: your code goes here!
     
    attr_accessor :title
        
      def title=(t)
          word_exceptions = %W(and in the of a an)
          @title=t.split.map{|x| word_exceptions.include?(x) ? x : x.capitalize}.join(" ")
          @title[0] = @title[0].capitalize
          
      end
  
end
