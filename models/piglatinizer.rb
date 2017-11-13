class PigLatinizer

  non_piglatin_words = ["i", "me", "to", "too", "a", "an", "in", "and", "on"]
  vowels = ["a", "e", "i", "o", "u"]

  def piglatinize(word)

    if non_piglatin_words.include?(word)
      word << "way"
    else
      letters = ''
      while !vowels.include?(word[0])
        letters << word[0]
        word = word.split("")[1..-1].join
      end
      word + letters + 'ay'
    end
  end


  def to_pig_latin(string)
    string.split.collect do |word|
      piglatinize(word)
    end.join(" ")
  end
end

p = PigLatinizer.new
