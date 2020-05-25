class PigLatinizer
  def piglatinize(text)
    text_array = text.split
    text_array.map! do |word|
      if word.start_with?(/[aeiouAEIOU]/)
      "#{word}way"
      else
        i = word.index(/[aeiouAEIOU]/)
        start = word.slice!(0, i)
        "#{word}#{start}ay"
      end
    end
    text_array.join(" ")
  end
end
