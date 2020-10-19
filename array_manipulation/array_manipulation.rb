def array_manipulation(n, queries)
  # input: the number n of elements in the array && queries => a two dimensional array of queries where each queries[i] contains three integers, a, b, and k.
  # initialize array result with n * 0 elements
  final_array = Array.new(n, 0)
  # for each sub array of queries, add last element to final array of indexes between two first element
  first_array = queries.first
  final_array.each_with_index do |elem, index|
    if ((first_array[0] - 1)..(first_array[1] - 1]).include?(index)
    final_array[index] += first_array[2]
    end
  end
  # output the biggest number of the array
  p final_array
end

array_manipulation(10, [[1, 5, 3], [4, 8, 7], [6, 9, 1]])
# should return 10
