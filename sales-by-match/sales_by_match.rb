def sock_merchant(_number_socks, arr_socks)
  # input integer representing number of socks and array of individual socks
  # with reduce method count the number of each type of sock in object
  hash_socks = arr_socks.each_with_object(Hash.new(0)) { |num, hash| hash[num] += 1 }
  # divide each value by 2 to have the number of matching pairs by type of socks
  array_matching_pairs = hash_socks.map { |_k, v| v / 2 }
  # sum all results of division together
  array_matching_pairs.reduce(&:+)
  # integer representing the total number of matching pairs
end

p sock_merchant(7, [1, 2, 1, 2, 3, 2])
# should return 2

p sock_merchant(9, [10, 20, 20, 10, 10, 30, 50, 10, 20])
# should return 3
