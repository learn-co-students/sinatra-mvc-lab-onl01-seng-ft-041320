class PigLatinizer
    attr_accessor :text

    def piglatinize(text)
        words = text.split(" ")
        words_pl = words.map do |word|
            prefix = ""
            word.split("").each do |letter|
                break if letter.downcase.scan(/[bcdfghjklmnpqrstvwxyz]/).length == 0
                prefix = "#{prefix}#{letter}"
            end
            suffix = word[prefix.length..-1]
            if prefix.length > 0
                "#{suffix}#{prefix}ay"
            else
                "#{word}way"
            end
        end
        words_pl.join(" ")
    end
end