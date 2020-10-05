def counting_valleys(_steps, path)
  # input: integer representing the number of steps, and a string reprensenting the path
  # split the path in an array
  steps_array = path.split('')
  # initialize high variable
  high = 0
  # initialize valleys count variable
  valleys_count = 0
  # initalize boolean isbelowsealevel
  is_below_sea_level = false
  # for each step
  steps_array.each do |step|
    # if step == "U", increment high by 1 else decrease by 1
    step == 'U' ? high += 1 : high -= 1

    # if high < 0, is_below_sea_level = true
    is_below_sea_level = true if high.negative?

    # if high == 0 && is_below_sea_level == true, return valleys_count +=1 and is_below_sea_level = false
    if high.zero? && is_below_sea_level == true
      valleys_count += 1
      is_below_sea_level = false
    end
  end

  # return valleys_count integer
  valleys_count
end

p counting_valleys(8, 'UDDDUDUU')
# should return 1
