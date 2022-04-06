# frozen_string_literal: true

# What is a merge sort?
# Sorts smaller arrays and merge them in sorted order.
# Levereages a recursion.

# Psuedo Code
# Sort the left half of the array (assuming n > 1)
# Sort the right half of the array (assuming n > 1)
# Merge the 2 halfs together.

# The goal of this method is to split the array into halfs until there are only single elements
def merge_sort(array)
  if array.length <= 1
    array
  else
    mid = (list.length / 2).floor
    left = merge_sort(array[0..mid - 1])
    right = merge_sort(array[mid..list.length])
    merge(left, right)
  end
end

def merge(left, right)
  if left.empty?
    right
  elsif right.empty?
    left
  elsif left.first < right.first
    [left.first] + merge(left[1..left.length], right)
  else
    [right.first] + merge(left, right[1..right.length])
  end
end
