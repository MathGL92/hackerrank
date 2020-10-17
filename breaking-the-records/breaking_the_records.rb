def breaking_records(scores)
  # input array of scores
  # initializin array results of records : new_highest and new_lowest
  result = [0, 0]
  # initializing number of lowest and highest with = scores[0]
  lowest = scores[0]
  new_lowest = 0
  highest = scores[0]
  new_highest = 0
  # loop through scores array
  n = 1
  while n < scores.size
  # if element[index] > or < to highest or lowest, update highest or lowest
    if scores[n] < lowest
      lowest = scores[n]
      result[1] += 1
    elsif scores[n] > highest
      highest = scores[n]
      result[0] += 1
    end
    n += 1
  end
  # output return 2 integers: number of lowest records and highest records
  p result
end


breaking_records([10, 5, 20, 20, 4, 5, 2, 25, 1])
# should return 2 4

breaking_records([3, 4, 21, 36, 10, 28, 35, 5, 24, 42])
# should return 4 0
