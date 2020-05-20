class PigLatinizer

    def to_piglatin(word)
        add_ay = "ay"
        add_way = "way"
        word_split = word.split('')
        vowels = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]
        indexes = [] 
        vowels.each do |vowel|
            index = word_split.index(vowel)
            if index != nil && index >= 0
                indexes << index
            end
            end
            first_vowel = indexes.min
                if first_vowel == 0
                "#{word}#{add_way}"
                else
                sub_string = word_split[first_vowel..word_split.length].join('')
                first_letters = word_split[0..first_vowel-1].join('')
                "#{sub_string}#{first_letters}#{add_ay}"
                end
    end

    def piglatinize(string)
        list_of_words = string.split(' ')
        if list_of_words.length == 1
            to_piglatin(list_of_words[0])
        else
            result = []
            list_of_words.each do |word|
            result << to_piglatin(word)
            end
            result.join(' ')
        end
    end
end