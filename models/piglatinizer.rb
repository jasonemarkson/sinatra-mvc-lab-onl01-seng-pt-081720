class PigLatinizer
    def piglatinize_word(word)
        consonants = ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "z", "H", "G", "S"]

        if consonants.include?(word[0])&&consonants.include?(word[1])&&consonants.include?(word[2]) == true
            word[3..word.length]+word[0..2]+"ay"
        elsif consonants.include?(word[0])&&consonants.include?(word[1]) == true
            word[2..word.length]+word[0..1]+"ay"
        elsif consonants.include?(word[0]) == true
            word[1..word.length]+word[0]+"ay"
        else
            word+"way"
        end
    end

    def piglatinize(words)
        new_sentence = []
        words.split(" ").each do |word|
            new_sentence << piglatinize_word(word)
        end
        new_sentence.join(" ")
    end


end