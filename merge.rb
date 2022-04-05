# frozen_string_literal: true

# What is a merge sort?
# Sorts smaller arrays and merge them in sorted order.
# Levereages a recursion.

# Psuedo Code
# Sort the left half of the array (assuming n > 1)
# Sort the right half of the array (assuming n > 1)
# Merge the 2 halfs together.

array = [5, 2, 1, 3, 6, 4,]

def merge_sort(arr)
  arr.each_slice((arr.length / 2.0).round).to_a
end

p merge_sort(array)
