def rot_left(array, num)
  # input array of integers and the number of rotation num
  # shift first num elements of array
  elem_shifted = array.shift(num)
  # add these num elements to array
  p array += elem_shifted
  # return new array transformed
end

rot_left([1, 2, 3, 4, 5], 4)
