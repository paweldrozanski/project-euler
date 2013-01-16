public 
def palindrome?
  str = self.to_s
  (0..str.length/2).each { |index| return false if str[index] != str[-1-index] }
  return true
end

def largest_palindrome_product
  biggest_palindrome = 100*100
  tmp = biggest_palindrome
  (100..999).each do |first|
    (first..999).each do |second|
      tmp = first*second
      biggest_palindrome = tmp if tmp.palindrome? and tmp>biggest_palindrome
    end
  end
  return biggest_palindrome
end

p largest_palindrome_product
