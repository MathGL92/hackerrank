def check_magazine(magazine, note)
  # 2 inputs: magazine and note are 2 arrays of strings

  # transform note_array into a hash with key the words and values the number of times they appear
  note_count = note.each_with_object(Hash.new(0)) { |word, new_hash| new_hash[word] += 1 }

  # iterate through magazine and decrease value of word when matches
  magazine.each { |word| note_count[word] -= 1 if note_count.key? word }

  # if all the values of note_count <= 0 return true, if note false
  all_words_included = note_count.values.all? { |value| value <= 0 }

  puts all_words_included ? 'Yes' : 'No'

  # output yes if the note can be written by words in magazine or no
end

check_magazine(['give', 'me', 'one', 'grand', 'today', 'night'], ['give', 'one', 'grand', 'today'])
# should return yes

check_magazine(['two', 'times', 'three', 'is', 'not', 'four'], ['two', 'times', 'two', 'is', 'four'])
# no
