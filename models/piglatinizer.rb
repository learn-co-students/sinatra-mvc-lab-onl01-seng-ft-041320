class PigLatinizer
  # attr_reader :words
  #
  # def initialize
  #   @word = @words.split(' ')
  # end
  #
  # def words
  #   @words
  # end
  #
  # def PigLatinizer.piglatinizer(words)
  #   @words = PigLatinizer.new
  # end
  #
  # def piglatinize
  #   new_thing = []
  #   vowels = 'aeiou'
  #   @words.each do |word|
  #     if vowels.include?(word[0])
  #       new_thing << begin_vowel(word)
  #     else
  #       new_thing << non_vowel(word, vowels)
  #     end
  #   end
  #   new_thing.join(' ')
  # end
  #
  # def begin_vowel(word)
  #   pig_word = ''
  #   pig_word = word.concat("way")
  #   pig_word
  # end
  #
  # def non_vowel(word, vowels)
  #   counter = 0
  #   front = ''
  #   back = ''
  #   pig_word = ''
  #   (0...word.length).each do |i|
  #     if !(vowels.include?(word[i]))
  #       back += word[i]
  #     elsif counter < 1
  #       front = word[i..-1]
  #       pig_word = front + back + "ay"
  #       counter += 1
  #     end
  #   end
  #    pig_word
  # end
  def translate_word(text)
  if /^[aeiou]/i.match(text)
    "#{text}way"
  else
    parts = text.split(/([aeiou].*)/)
    "#{parts[1]}#{parts[0]}ay"
  end
end

def piglatinize(text)
  words = text.split(' ')
  words.map {|word| translate_word(word)}.join(' ')
end
end