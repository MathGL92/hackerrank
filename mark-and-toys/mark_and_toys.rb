def maximum_toys(prices, k)
  # input array of prices (integers) and k the amount Mark has to spend
  # sort prices array
  prices.sort!
  # initialize index of array to be able to loop
  i = 0
  # while k > price, deduct price from k and increment i by one
  while k > prices[i] do
    k -= prices[i]
    i += 1
  end
  # output an integer representing the max number of toys Mark can buy
  p i
end

maximum_toys([1, 12, 5, 111, 200, 1000, 10], 50)
