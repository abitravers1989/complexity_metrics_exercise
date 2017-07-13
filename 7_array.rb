# Given a sentence, return an array containing every other word.
# Punctuation is not part of the word unless it is a contraction.
# In order to not have to write an actual language parser, there won't be any punctuation too complex.
# There will be no "'" that is not part of a contraction.
# Assume each of these  charactsrs are not to be considered: ! @ $ # % ^ & * ( ) - = _ + [ ] : ; , . / < > ? \ |
#
# Examples
# alternate_words("Lorem ipsum dolor sit amet.")  # => ["Lorem", "dolor", "amet"]
# alternate_words("Can't we all get along?")      # => ["Can't", "all", "along"]
# alternate_words("Elementary, my dear Watson!")  # => ["Elementary", "dear"]

def alternate_words(array)

#was finding it hard to do a gsub or delete with the characters as the hash etc
#kept breaking it .. Answer from stackoverflow
#testing this out now in irb hence not as many revisions of the challenge

  new_string = array.downcase.gsub(/[^a-z0-9\s]/i, '').split


return_this = []
new_string.select.with_index do |value, index|

    if (index %2 == 0) then
      return_this.push(value)
    end
  long_array= return_this.join(" ")

p long_array

end

end
alternate_words("Can't we all get along?")
