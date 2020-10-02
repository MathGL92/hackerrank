def mini_max_sum(arr)
  # input arr of numbers
  # sort the array
  arr_sorted = arr.sort
  # min sum by summing the four first elements
  min_sum = arr_sorted.first(4).reduce(:+)
  # max sum by summing the four last elements
  max_sum = arr_sorted.last(4).reduce(:+)
  # output string with min sum and max sum
  puts "#{min_sum} #{max_sum}"
end

# mini_max_sum([1, 3, 5, 7, 9])
