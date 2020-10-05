def counting_valleys(steps, path)
    # input: integer representing the number of steps, and a string reprensenting the path
    # split the path in an array
    array_path = path.split('')
    # replace the U by 1 and D by -1
    # count the time the array is negative
    # return an integer
end

p counting_valleys(8, "UDDDUDUU")
# should return 1
