#write your code here
def translate(word)
    vowels = "aeiou"
    words = word.split
    words.map! { |i|
        if vowels.include?(i[0])  # 1 vowel
            i = i + "ay"
        elsif vowels.include?(i[1])  # 1 consonant
            if i[0] == "q" and i[1] == "u"
                i = i[2...] + "quay"
            else
                i = i[1...] + i[0] + "ay"           
            end
        elsif not vowels.include?(i[1]) and vowels.include?(i[2]) # 2 consonant
            if i[1] == "q" and i[2] == "u"
                i = i[3...] + i[0] + "quay"
            else
                i = i[2...] + i[0] + i[1] + "ay"
            end
        else  # 3 consonant
            i = i[3...] + i[0...3] + "ay"
        end
    }
    words.join(" ")
end