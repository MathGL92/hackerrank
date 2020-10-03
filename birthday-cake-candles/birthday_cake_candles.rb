def birthday_cake_candles(candles)
  # input array of integer
  # initialize a hash counts
  counts = Hash.new(0)
  # iterate through candles array and add +1 to count to matching height
  candles.each { |candle| counts[candle] += 1 }
  # sort
  sorted = counts.sort_by{|k, v| v}.reverse
  # output integer : number of highest integer
  sorted.first[1]
end

p birthday_cake_candles([3,2,1,3])
