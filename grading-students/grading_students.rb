def grading_students(grades)
    # input array of grades
    # iterate through grades array
    final_grades = grades.map do |grade|
      # if grade < 38 return grade
      if grade < 38
        grade
      # if number + 2 or number + 1 % 5 == 0 then we round up to this num
      elsif is_divisible_by_five?(grade + 2)
        grade + 2
      elsif is_divisible_by_five?(grade + 1)
        grade + 1
      # else return grade
      else
        grade
      end
    end
    # output array of grades rounded
    p final_grades
end

def is_divisible_by_five?(n)
  n % 5 == 0
end

grading_students([73, 67, 38, 33]);
# should return [75, 67, 40, 33]
