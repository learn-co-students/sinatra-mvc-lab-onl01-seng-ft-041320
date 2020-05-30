require 'pry'

class PigLatinizer
    attr_accessor :piglatinized_phrase
  
    
  def piglatinize_word(word) 
    
    if word.downcase.index(/[aeiou]/) == 0
      word + "way"
    else
      vowel_index = word.index(/[aeiou]/)
      front_end = word.slice!(0..vowel_index-1)
      word + front_end +"ay"
    end
  end
  
  def piglatinize(phrase)
    word_array = phrase.split(" ")
    
     word_array.collect {|word| piglatinize_word(word)}.join(" ")
  end
end
