# frozen_string_literal: true

# The method below returns an array of the fib sequence up to the given number using an iteration method

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

# The method below uses recursion to output the sequence number according to the given index. 
def fib_rec(n)
  if n == 1 || n.zero?
    n
  else
    fib_rec(n - 1) + fib_rec(n - 2)
  end
end
