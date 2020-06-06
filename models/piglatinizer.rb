class PigLatinizer

    def initialize
        # @words = words.downcase
    end

    # split word 
    def piglatinize_word(word)
        found_vowel = false
        pre_word = ''
        post_word = ''
        word.chars.each do |character| 
            if character.downcase.match(/[aeiou]/) || found_vowel == true
                pre_word = pre_word + character
                found_vowel = true
            else
                post_word = post_word + character
            end
        end

        if post_word == ''
            pig_latin_word = pre_word + "way"
        else
            pig_latin_word = pre_word + post_word + "ay" 
        end
        pig_latin_word
    end

    def piglatinize(text)
        words = text.split(' ')
        converted_words = words.collect{|word| piglatinize_word(word)}.join(' ')
        # binding.pry
        converted_words
    end
end