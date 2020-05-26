class PigLatinizer

  def piglatinize(words)
    words = words.split(" ")
    words.map { |word| piglatinize_word(word) }.join(" ")
  end

  def vowel?(char)
   char.match(/[aAeEiIoOuU]/)
  end

  def piglatinize_word(word)
    if vowel?(word[0])
      word + "way"
    else
      vowel_index = word.index(/[aAeEiIoOuU]/)
      first = word.slice(0..vowel_index-1)
      second = word.slice(vowel_index..-1)
      second + first + "ay"
    end
  end
end
