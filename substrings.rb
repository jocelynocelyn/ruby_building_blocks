def substrings sentence, array
  found_words = Hash.new
  sentence = sentence.downcase
  array.each do |word|
    array = sentence.scan(word)
    if array.length != 0
      found_words[word] = array.length
    end
  end
  puts found_words
end

dictionary = ["cats", "oranges", "hello", "fries", "going", "go", "pink", "Christmas"]

substrings("Hello! I really like cats and dogs! Cats are better though.", dictionary)
