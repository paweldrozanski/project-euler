public 
def primed?
  (2..Math.sqrt(self).to_i).each do |number|
    return false if self % number == 0
  end
  return true
end

def biggest_prime_factor
  biggest = 0
  (2..Math.sqrt(self).to_i).each do |number|
    biggest = number if self % number == 0 and number.primed?
  end
  biggest
end
