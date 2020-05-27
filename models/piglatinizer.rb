class PigLatinizer
    # vowels: a e i o u
    # suffix = "ay"

    attr_accessor :phrase

    VOWELS = ["a", "e", "i", "o", "u"]
    SUFFIX = "ay"

    def transform_word(word)
        return "#{word + "w" + SUFFIX}" if VOWELS.include?(word[0].downcase)

        first_vowel_index = 0
        # getting the index of the first vowel that appears
        word.split('').each do |letter|
            if VOWELS.include?(letter)
                first_vowel_index = word.index(letter)
                break
            end
        end

        "#{word[first_vowel_index..-1] + word[0..first_vowel_index-1] + SUFFIX}"
    end

    def piglatinize(phrase)
        pig_latin_words = []

        phrase.split(' ').each do |word|
            pig_latin_words << transform_word(word)
        end

        pig_latin_words.join(' ')
    end

    # original implementation before tests
    '''
    def transform()
        # for each word...
        #1. get the index of the first vowel that appears in the word
        #2. if index == 0 append "way" and return new string
        #3. else cut everything before the first vowel, append it to the end of the string, then append "ay" and return new string
        
        words = @phrase.split(" ")
        pig_latin_words = []

        words.each do |word|
            if VOWELS.include?(word[0])
                pig_latin_words << "#{word + "w" + SUFFIX}"
            else
                first_vowel_index = 0
                # getting the index of the first vowel that appears
                word.split('').each do |letter|
                    if VOWELS.include?(letter)
                        first_vowel_index = word.index(letter)
                        break
                    end
                end

                pig_latin_words << "#{word[first_vowel_index..-1] + word[0..first_vowel_index-1] + SUFFIX}"
            end
        end

        pig_latin_words.join(" ")
    end
    '''
end