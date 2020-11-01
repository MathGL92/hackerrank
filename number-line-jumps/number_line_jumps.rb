def kangaroo(x1, v1, x2, v2)
  # input: 4 integers - x1 and x2 starting point of k1 and k2 / v1 and V2 speed of k1 and k2
  # if YES : x1 + v1*t = x2 + v2*t
  # t = (x2 -x1) / (v1 - v2)
  # to have t > 0 , x2 > x1 and v1 > v2
  # to have t integer (x2-x1)%(v1-v2) == 0
  if x2 > x1 && v1 > v2 && (x2-x1)%(v1-v2) == 0
    p 'YES'
  else
    p 'NO'
  end
  # print string YES or NO if kangaroos meet
end

kangaroo(0, 3, 4, 2)
# YES

kangaroo(0, 2, 5, 3)
# NO

kangaroo(4523, 8092, 9419, 8076)
# YES

kangaroo(1408, 6689, 6730, 4028)
# YES
