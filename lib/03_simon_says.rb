def echo(s)
    s
end

def shout(s)
    s.upcase
end

def repeat(s, n = 2)
    i = 0
    a = []
    while i < n 
        a << s
        i +=1
    end 
    a.join(" ")
end

def start_of_word(s, n)
    s[0..n-1]
end

def first_word(s)
    s.split[0]
end

def titleize(s)
    # add more little_words if needed
    little_words = ["and", "the", "over"]
    a = s.split
    i = 0 
    while i < a.size 
      a[i] = a[i].capitalize if i == 0 or !little_words.include?(a[i])
      i += 1
    end
    a.join " "
end