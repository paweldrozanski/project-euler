sum = 0
(1...1000).each { |number| sum = sum + number if number % 3 == 0 or number % 5 == 0 }
p sum
