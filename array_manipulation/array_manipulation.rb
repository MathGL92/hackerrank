require 'pry'

#### brute force algorithm
# def array_manipulation(n, queries)
#   # input: the number n of elements in the array && queries => a two dimensional array of queries where each queries[i] contains three integers, a, b, and k.
#   # initialize array result with n * 0 elements
#   final_array = Array.new(n, 0)
#   # for each sub array of queries, add last element to final array of indexes between two first element
#   queries.each do |sub_array|
#     # index is the first element of each subarray
#     i = sub_array[0] - 1
#     # while i is less than the second element of subarray, loop over final_array and add the last element of subarray
#     while i < sub_array[1]
#       final_array[i] += sub_array[2]
#       i += 1
#     end
#   end
#   # output the biggest number of the array
#   p final_array.max
# end

### Prefix sum algorithm

def array_manipulation(n, queries)
  # initialize array result with (n+1) * 0 elements, because we will be updating N+1 index
  final_array = Array.new(n+2, 0)
  # for each query, just modifiy 2 values of final_array  0(1) => add k to "sums[a-1]" and susbtract k to 'sums[b]'
  queries.each do |query|
    final_array[query[0]] += query[2]
    final_array[query[1]+1] -= query[2]
  end
  # prefix sum algorithm to sum final_array[index] += final_array[index-1] when index > 0 and < size-1
  prefix_sum_algorithm = (1..final_array.size-1).map { |i| final_array[i] += final_array[i-1] }
  # maximum element
  p prefix_sum_algorithm.max
end

# array_manipulation(10, [[1, 5, 3], [4, 8, 7], [6, 9, 1]])
# should return 10

array_manipulation(5, [[1, 2, 100], [2, 5, 100], [3, 4, 100]])
# should return 200
