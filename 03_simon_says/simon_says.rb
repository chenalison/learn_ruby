#write your code here
def echo(input)
    input
end

def shout(input)
    input.upcase
end

def repeat(input, times=2)
    output = input
    while times > 1 do
        output = output + " " + input
        times = times - 1
    end
    output
end

def start_of_word(word, number)
    out = ""
    while number > 0 do
        out = word[number-1] + out
        number = number - 1
    end
    out
end

def first_word(phrase)
    out = ""
    index = 0
    while phrase[index] != " " do
        out = out + phrase[index]
        index = index + 1
    end
    out
end

def titleize(word)
    words = word.split
    words.map! { |i|
        if i == "the"
            i
        elsif i == "and"
            i
        elsif i == "over"
            i
        else
            i.capitalize
        end
    }
    
    words[0] = words[0].capitalize
    words = words.join(" ")
end
