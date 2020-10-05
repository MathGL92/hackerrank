def jumping_on_clouds(clouds)
  # input of bineray integers space separated clouds
  # initialize number of steps
  steps = 0
  # initialize index and use while loop
  i = 0
  until i == clouds.size - 1
    # if index + 2 < of clouds length && cloud index + 2 == 0, increment by 2 index and increment step by one
    if (i + 2) < clouds.length && (clouds[i + 2]).zero?
      i += 2
    # else increment index by 1 and step by 1
    else
      i += 1
    end
    steps += 1
  end
  # output printed integer: steps
  p steps
end

jumping_on_clouds([0, 0, 1, 0, 0, 1, 0])
# should return 4

jumping_on_clouds([0, 0, 0, 0, 1, 0])
# should return 3
