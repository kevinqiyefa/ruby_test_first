def translate(s)
    new_string = []
    vowels = ['a','e','i','o','u']
    a = s.split
    a.each{|x|
        i = 0
        while (i < x.size) and not vowels.include?(x[i].downcase)
            if x[i..i+1].downcase =="qu"
                i+=2
            else
                i += 1
            end
        end
        
        if vowels.include?(x[0].downcase)
          new_string << x+"ay"
        else
           new_string << x[i..-1]+x[0..(i-1)] + "ay" 
        end
        
        new_string[-1].downcase!.capitalize! if x == x.capitalize
            
    }
    new_string.join(" ")
end


