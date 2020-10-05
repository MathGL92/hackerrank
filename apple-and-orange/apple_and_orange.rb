def count_apples_and_oranges(start_point, end_point, apple_tree, orange_tree, apples, oranges)
  # # array defining end positions of apples
  # apples_positions = apples.map { |apple| apple + apple_tree }
  # # filtering apples in the range of house
  # apples_on_house = apples_positions.filter { |apple| (start_point..end_point).include?(apple) }
  # # array defining end positions of oranges
  # oranges_positions = oranges.map { |orange| orange + orange_tree }
  # # filtering oranges in the range of house
  # oranges_on_house = oranges_positions.filter { |orange| (start_point..end_point).include?(orange) }
  # # output of 2 integers on two different lines, first: number of apples on Sam's house, second: number of oranges => print the size of 2 arrays
  # puts apples_on_house.size
  # puts oranges_on_house.size

  # refactored with select method
  puts apples.select { |apple| (start_point..end_point).include?(apple + apple_tree) }.size
  puts oranges.select { |orange| (start_point..end_point).include?(orange + orange_tree) }.size
end

count_apples_and_oranges(7, 11, 5, 15, [-2, 2, 1], [5, -6])
# should return 1 1
