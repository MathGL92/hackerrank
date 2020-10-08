require 'pry'

def hourglass_sum(arr)
  # input array of arrays
  # 16 hourglass sums in new array
  hourglass_sums = []

  # calculate each sum
  i = 0
  j = 0
  while i < 4
    while j < 4
      # push hourglass sum in the array of sums
      hourglass_sums << arr[i][j] + arr[i][j + 1] + arr[i][j + 2] + arr[i + 1][j + 1] + arr[i + 2][j] + arr[i + 2][j + 1] + arr[i + 2][j + 2]
      j += 1
    end
    j = 0
    i += 1
  end
  # return the highest element of hourglass_sums
  p hourglass_sums.max
  # output highest hourglass sum
end

array_one = [[1, 1, 1, 0, 0, 0], [0, 1, 0, 0, 0, 0], [1, 1, 1, 0, 0, 0], [0, 0, 2, 4, 4, 0], [0, 0, 0, 2, 0, 0], [0, 0, 1, 2, 4, 0]]
hourglass_sum(array_one)
# should return 19
