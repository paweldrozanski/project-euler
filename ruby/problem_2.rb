def fibonacci_recur(n)
  # recursion sucks when it comes to big numbers
  # then use iterative version
  if n < 2
    return 1
  else
    return fib(n-1) + fib(n-2)
  end
end

def fibonacci_iter
  # stating from 10th fibonacci number
  num1, num2 = 55, 89
  sum = 44

  begin
    num1, num2 = num2, num1 + num2
    p "num2: " + num2.to_s if num2.even?
    sum += num2 if num2.even?
  end while num2 < 4000000
  
  p sum
end


#(1..32).each { |n| print "#{n}. #{fib(n)}\n" }
fibonacci_iter
