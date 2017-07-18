# Write a function, `letter_count(str)` that takes a string and
# returns a hash mapping each letter to its frequency. Do not include
# spaces.

def letter_count(str)
  counter_hash = Hash.new(0)
  str.chars do |char|
    counter_hash[char] += 1 unless char == ' '
  end
  counter_hash
end
