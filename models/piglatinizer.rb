class PigLatinizer

  def piglatinize(word)

    non_piglatin_words = ["i", "me", "to", "too", "a", "an", "in", "and", "on"]
    vowels = ["a", "e", "i", "o", "u"]


    if non_piglatin_words.include?(word)
      word << "way"
    elsif vowels.include?(word[0])
      word << "ay"
    else
      letters = nil
      while !vowels.include?(word[0])
        letters << word[0]
        word = word.split("")[1..-1].join
      end
      word + letters + 'ay'
    end
  end


  def to_pig_latin(string)
    string.split.collect{|word| piglatinize(word)}.join(" ")
  end
end

p = PigLatinizer.new

puts p.piglatinize("pork")
