def repeated_string(string, num)
  # input: a string to repeat and an integer (the number of characters to consider)
  # number of a in string
  number_of_a = string.count('a')
  # number of times string fits in num
  times = num / string.size
  # difference between num and times
  rest = num % string.size
  # output: an integer giving the number of 'a'
  # number of a's in string mutliplied by times + number of a's in slice of string
  p number_of_a * times + string.slice(0, rest).count('a')
end

repeated_string('aba', 10)
# should return 7

repeated_string('a', 1000000000000)
# should return 1000000000000
