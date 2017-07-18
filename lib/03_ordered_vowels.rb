# Write a method, `ordered_vowel_words(str)` that takes a string of
# lowercase words and returns a string with just the words containing
# all their vowels (excluding "y") in alphabetical order. Vowels may
# be repeated (`"afoot"` is an ordered vowel word).
#
# You will probably want a helper method, `ordered_vowel_word?(word)`
# which returns true/false if a word's vowels are ordered.
require 'pry-byebug'

def ordered_vowel_words(str)
  ordered_vowel_string = []
  str.split(' ').each do |word|
    ordered_vowel_string << word if ordered_vowel_word?(word)
  end
  ordered_vowel_string.join(' ')
end

def ordered_vowel_word?(word)
  vowels = %w(a e i o u)
  previous_vowel = 'a'
  current_vowel = nil

  word.chars do |char|
    if vowels.include?(char)
      current_vowel = char
      return false if vowels.index(current_vowel) < vowels.index(previous_vowel)
      previous_vowel = current_vowel
    end
  end

  true
end
