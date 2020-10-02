def staircase(n)
  # array from 1 to n
  array_n = (1..n).to_a
  # puts each element of array on a new line with n * '#' and complete with white spaces
  array_n.map do |num|
    puts ('#' * num).to_s.rjust(n, ' ')
  end
end

# puts staircase(5)
