# Write a function `bubble_sort(arr)` which will sort an array of
# integers using the "bubble sort"
# methodology. (http://en.wikipedia.org/wiki/Bubble_sort)

def bubble_sort(arr)
  sorted = false

  until sorted
    sorted = true
    arr[0..-2].each_index do |i|
      if arr[i+1] < arr[i]
        arr[i], arr[i+1] = arr[i+1], arr[i]
        sorted = false
      end
    end
  end

  arr
end
