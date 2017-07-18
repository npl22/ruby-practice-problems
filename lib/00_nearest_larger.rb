# Write a function, `nearest_larger(arr, i)` which takes an array and an
# index.  The function should return another index, `j`: this should
# satisfy:
#
# (a) `arr[i] < arr[j]`, AND
# (b) there is no `j2` closer to `i` than `j` where `arr[i] < arr[j2]`.
#
# In case of ties (see example below), choose the earliest (left-most)
# of the two indices. If no number in `arr` is larger than `arr[i]`,
# return `nil`.

def nearest_larger(arr, idx)
  target = arr[idx]
  next_largest = 1.0 / 0.0
  next_largest_idx = nil
  arr.each_with_index do |el, j|
    if (el > target) && (el - target < next_largest - el)
      next_largest = el
      next_largest_idx = j
    end
  end
  next_largest_idx
end
