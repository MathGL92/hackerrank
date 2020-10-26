def two_strings(s1, s2)
  # input two strings to compare
  # tranform them in hashes with key the character and value number of iteration
  s1_hash = s1.chars.each_with_object(Hash.new(0)) { |char, new_hash| new_hash[char] += 1 }
  # output "YES" or "NO" is they have at least a current character in common
  common_char = s2.chars.any? { |char| s1_hash.key? char }

  p common_char ? 'YES' : 'NO'
end

two_strings("hello", "world")
# YES
two_strings("hi", "world")
# NO
