# Write a function, `no_repeats(year_start, year_end)`, which takes a
# range of years and outputs those years which do not have any
# repeated digits.
#
# You should probably write a helper function, `no_repeat?(year)` which
# returns true/false if a single year doesn't have a repeat.

def no_repeats(year_start, year_end)
  no_repeat_years = []
  (year_start..year_end).each do |year|
    no_repeat_years << year if no_repeat?(year)
  end
  no_repeat_years
end

def no_repeat?(year)
  counter_hash = Hash.new(0)
  year.to_s.chars do |digit|
    counter_hash[digit] += 1
    return false if counter_hash[digit] > 1
  end
  true
end
