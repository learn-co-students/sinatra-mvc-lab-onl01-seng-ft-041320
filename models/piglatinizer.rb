class PigLatinizer

    def piglatinize(user_input)
        user_input.split(" ").map {|word| piglatinized(word)}.join(" ")
    end


    private
    def vowel?(char)
        char.match(/[AEIOUaeiou]/)
    end

    def piglatinized(word)
        if vowel?(word[0]) 
            "#{word}way"
        else
            vowel_idx = word.index(/[aAeEiIoOuU]/)
            starting_part = word.slice(vowel_idx..-1)
            left_over = word.slice(0..vowel_idx - 1)
            "#{starting_part}#{left_over}ay"
        end
    end
end