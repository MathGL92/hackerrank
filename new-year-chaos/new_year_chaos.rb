require 'pry'

def minimum_bribes(array)
  # input array not in order
  # array ordered
  correct_order = array.sort
  # initializing count of bribes
  count = 0
  # guard clause: if an element is greater its original position by more than 2
  array.each_with_index do |_elem, index|
    return puts 'Too chaotic' if array[index] - (index + 1) > 2
  end
  # until the array with bribes match exactly the array without bribes loop over it
  until array == correct_order
    array.each_with_index do |_elem, index|
      # iterating through array, if elem > elem with index + 1, put item after the + 1, and increment count
      if index + 1 < array.size && array[index] > array[index + 1]
        array.insert(index + 1, array.delete_at(index))
        count += 1
      end
    end
  end

  # output integers representing the number of bribes (exchange of positions between numbers to make them ordered)
  puts count
end

minimum_bribes([2, 1, 5, 3, 4])
# minimum_bribes([2, 5, 1, 3, 4])
