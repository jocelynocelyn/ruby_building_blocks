def stock_picker array
  #array to hold days
  days = Array.new
  #starts at negative infinity
  result = -1/0.0
  #for every number in the array
  array.each do |num|
  #i will be the index number plus one, so that it will properly go through the length of the array
    i = array.index(num) + 1
    #while iterating through numbers, and i is not the last number
    while i < array.length
      #if index number minus profit is more than negative infinity, result will equal the higher number, and then the days array will print the index number,
      if (array[i] - num) > result
        puts "This is i #{i}"
        result = array[i] - num
        puts "this is the first number, which will eventually be the buy date. #{array.index(num)}"
        puts "This is the profit amount #{num}"
        days = [array.index(num), i]
      end
      i += 1
    end
  end
  puts days
end

stock_picker([12, 4, 13, 5, 7, 24, 56])
stock_picker([56, 3, 23, 53, 1, 45])
stock_picker([17, 3, 6, 9, 15, 8, 6, 1, 10])
