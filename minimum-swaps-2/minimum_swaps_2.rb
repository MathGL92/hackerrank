require 'pry'

def minimum_swaps(arr)
  # input array of integers not sorted
  # sorted array
  sorted_arr = arr.sort
  # initializing swapped count
  swaps = 0
  # until arr == sorted array do
  until arr == sorted_arr
    # iterate though arr
    arr.each_with_index do |_num, index|
      # if array[index] is greater than its supposed index + 1, swap with the element at its index and increment swap of 1
      if arr[index] != index + 1
        temp = arr[index]
        arr[index] = arr[arr[index] - 1]
        arr[temp - 1] = temp
        swaps += 1
      end
    end
  end
  p swaps
  # integer representing the minimum number of swaps to sort the array
end

minimum_swaps([4, 3, 1, 2])
# should return 3

minimum_swaps([2, 3, 4, 1, 5])
# should return 3

minimum_swaps([1, 3, 5, 2, 4, 6, 7])
# should return 3
