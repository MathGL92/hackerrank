def time_conversion(string)
  # input string in 12hour format: '07:05:45PM'
  # isolate 'PM'
  am_or_pm = string[-2..-1]
  # split the string in array of 3 elements 07, 05, 45
  array_digits = string[0..-3].split(':').map(&:to_i)
  # if PM add 12 to first element if not don't change
  am_or_pm == 'PM' ? array_digits[0] += 12 : array_digits[0]
  # join with :
  array_digits.map(&:to_s).map { |digit| digit.rjust(2, '0') }.join(':')
  # output string in 24 hour format
end

p time_conversion('07:05:45PM')

# should return 19:05:45
