class PigLatinizer
  attr_reader :words
 
  def piglatinize(word)
    if word.split(" ").count == 1
      piglatinize_word(word)
    else
      phrase = word.split(" ")
      new_phrase = phrase.map {|w| piglatinize_word(w)}
      new_phrase.join(" ")
    end
    
  end

  def piglatinize_word(word)
    if word.downcase.start_with?(/[aeoui]/)
      word + "way" 
    else
      while word.downcase.start_with?(/[bcdfghjklmnpqrstvwxyz]/)
        word = word.split('')
        first_letter = word[0]
        word.shift
        word << first_letter
        word = word.join('')
      end
      word + "ay"
    end
  end
end