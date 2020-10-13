def count_swaps(array)
  # input array not sorted
  # inialize count of swaps
  swaps = 0
  # array sorted
  sorted_array = array.sort
  # loop through array
  while array != sorted_array
    array.each_with_index do |_num, index|
      if index < array.size - 1 && array[index] > array[index + 1]
        array[index], array[index + 1] = array[index + 1], array[index]
        swaps += 1
      end
    end
  end

  # output 3 strings
  puts "Array is sorted in #{swaps} swaps."
  puts "First Element: #{array.first}"
  puts "Last Element: #{array.last}"
end


count_swaps([3, 2, 1])
