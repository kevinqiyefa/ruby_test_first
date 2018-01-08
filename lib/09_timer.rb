class Timer
    attr_accessor :seconds
    
    def initialize(s=0)
        @seconds = s
    end
    
    def time_string
        hours   = (@seconds / 3600)
        minutes = (@seconds % 3600) / 60
        seconds = (@seconds % 60)
        [padded(hours), padded(minutes), padded(seconds)].join(":")
    end
    
    #Helper method:
    def padded(n)
        n < 10 ? "0#{n}" : "#{n}"
    end
    
end
