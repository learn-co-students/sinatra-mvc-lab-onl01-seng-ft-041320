  
class PigLatinizer

    def piglatinize(string)
      string_array = string.split(" ")
      piglatin_array = string_array.map {|word| piglatinize_word(word)}
      piglatin_array.join(" ")
    end
  
    def piglatinize_word(word)
      first_letter = word[0].downcase
      vowels = ['a', 'e', 'i', 'o', 'u']
      punctuation = [".", "!", "?"]
  
      splitword = word.split("")
      punct = []
      splitword.each do |l|
        punct << l if punctuation.include?(l)
      end
  
      punct.size.times{splitword.pop}
  
      word = splitword.join("")
  
      if vowels.include?(first_letter)
        pigword = "#{word}way"
      else
        consonants = []
        letters_array = word.split("")
        i = 0
        l = word[i]
        loop do 
          consonants << l
          i+= 1
          l = word[i]
          break if vowels.include?(l)
        end
        pigword = "#{word[consonants.length..-1] + consonants.join + "ay"}"
      end
  
      pigword = pigword + "#{punct.join('')}" if punct
      
    end
  
  end