# Write a function word_unscrambler that takes two inputs: a scrambled
# word and a dictionary of real words.  Your program must then output
# all words that our scrambled word can unscramble to.
#
# Hint: To see if a string `s1` is an anagram of `s2`, split both
# strings into arrays of letters. Sort the two arrays. If they are
# equal, then they are anagrams.

def word_unscrambler(str, words)
  unscrambled_words = []
  words.each do |word|
    unscrambled_words << word if is_anagram?(str, word)
  end
  unscrambled_words
end

# Sort only works on arrays
def is_anagram?(s1, s2)
  s1.chars.sort.join == s2.chars.sort.join
end
