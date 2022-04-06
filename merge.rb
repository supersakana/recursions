# frozen_string_literal: true

'https://www.honeybadger.io/blog/ruby-merge-sort/'

# What is a merge sort?
# Sorts smaller arrays and merge them in sorted order.
# Levereages a recursion.

# Psuedo Code
# Sort the left half of the array (assuming n > 1)
# Sort the right half of the array (assuming n > 1)
# Merge the 2 halfs together.

# The goal of this method is to split the array into halfs until there are only single elements
def sort(numbers)
  num_elements = numbers.length
  return numbers if num_elements <= 1

  half_of_elements = (num_elements / 2).round

  left  = numbers.take(half_of_elements)
  right = numbers.drop(half_of_elements)

  sorted_left = sort(left)
  sorted_right = sort(right)

  merge(sorted_left, sorted_right)
end

def merge(left_array, right_array)
  return left_array if right_array.empty?

  return right_array if left_array.empty?

  smallest_number = if left_array.first <= right_array.first
                      left_array.shift
                    else
                      right_array.shift
                    end

  recursive = merge(left_array, right_array)

  [smallest_number].concat(recursive)
end
sort([5, 2, 1, 3, 6, 4, 8])
