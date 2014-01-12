require 'pry'

class Array
  
  def sum
  total = 0
  i = 0
    while i <= self.length-1
      total += self[i]
      i += 1
    end
      total
  end


  def primes
    not_prime = []

    self.each do |number|
      divide_against = (2..number)
      divide_against.each do |div_number|
        if number % div_number == 0
          if div_number != number 
            not_prime << number 
            break
          end
        end
      end
    end
    self.delete(1)
    self - not_prime
  end


  def bubble_sort 
    c = 0

    while c < self.length-1

      cycle = 0
      while cycle < self.length-1
        left = 0
        right = 0
        pos = 0
        temp_array = []

        left = self[pos+cycle] 
        right = self[pos+1+cycle]
        if left > right 
           temp_array = swap(left, right)
           self[pos+cycle] = temp_array[0]
           self[pos+1+cycle] = temp_array[1]
           puts self.join(",")
           cycle += 1
           c = 0
        else
            c += 1
            puts c
            if c >= self.length-1
              break
            else
              cycle += 1
            end
        end
      end
    end
    self
  end


   def swap(l, r)
    stack = []
    stack << l
    stack << r
    return stack.pop, stack.pop
  end
end





