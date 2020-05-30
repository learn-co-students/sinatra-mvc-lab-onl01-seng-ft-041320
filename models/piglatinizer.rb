class PigLatinizer
    def piglatinize(words)
        words.split.each do |word|
            matchdata = word.match(/^[^aeiouAEIOU]{1,3}/)
            is_vowel = (matchdata == nil)
            first = matchdata[0] unless is_vowel
            if !is_vowel
                word.sub!(first, "")
                latinized = first + "ay"
            else
                latinized = "way"
            end
            word << latinized
        end.join(" ")
    end
end