def caesar_cipher string, num
  letters = string.split('')

  letters.each do |letter|
    char = letter.ord
    if char >=65 && char <= 90
      char += num
      while char > 90
        char %= 90
        char += 64
      end
    end

    if char >=97 && char <=122
      char += num
      while char > 122
        char %= 122
        char += 96
      end
    end
    print char.chr
  end
  puts

end


caesar_cipher("What a string!", 5)
caesar_cipher('I love ruby!', 3)
