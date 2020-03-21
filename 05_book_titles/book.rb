class Book
# write your code here
    attr_accessor :title
    def initialize
        @title = ""
    end

    def title=(name)
        conjunction = "andtheoverinof"
        words = name.split
        words.map! { |i|
            if i == "i"
                i = i.capitalize
            elsif conjunction.include?(i)
                i
            else
                i = i.capitalize
            end
        }
        words[0] = words[0].capitalize
        @title = words.join(" ")
    end
        
end
