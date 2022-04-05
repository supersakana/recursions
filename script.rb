# frozen_string_literal: true

# Method that takes a number and returns the number in the fibbonacci sequence.
def fib(n)
  if n == 1 || n.zero?
    n
  else
    fib(n - 1) + fib(n - 2)
  end
end

fib(7)

# Create a method using iteration that returns an array of the fib sequence when given a numeric value

def fib_iteration(n, sequence = [])
  until n.negative?
    if [1, 0].include?(n)
      sequence.push(n)
      n -= 1
    else
      sequence.push((n - 1) + (n - 2))
      n -= 1
    end
  end
  sequence
end

fib_iteration(8)
