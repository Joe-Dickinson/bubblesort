require 'pry'

class Array
  # Calculate the total sum of all the elements in this array (assuming they are
  # numeric)
  #
  def sum
    # self.join(",")
  total = 0
  i = 0
    while i <= self.length-1
      total += self[i]
      i += 1
    end
      total
  end



  # Returns the prime numbers in this array
  def primes
    #puts self.join(",")
  end

  # def is_prime
  #   n = self
  #   i = n-1
  #   while i > 2
  #     if i % n == 0
  #       true
  #       break
  #     else
  #       false
  #     end
  #     i += -1
  #   end
  #end

  # Examine each pair in myself and swap them until all my
  # elements are in order
  #

  #a, b = b, a
#stack
#temp variable

#cycle counter

  def bubble_sort
  # 	puts self.join(",")
    reset = 0
    r = 0
    c = 0

    while c < self.length-1
      

      r += 1

      cycle = 0
      while cycle < self.length-1
        left = 0
        right = 0
        pos = 0
        temp_array = []

        left = self[pos + cycle] 
        right = self[pos+1 + cycle]
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
              puts "We're done."
              break
            else
              cycle += 1
            end
        end
      end
    reset += 1
    #self
    end
    self
  end


   def swap(l, r)
    # puts "lets swap #{l} with #{r}!"
    stack = []
    stack << l
    stack << r
    # puts "The stack contains #{stack}"
    return stack.pop, stack.pop
  #   temp_left = l
  #   temp_right = r
  #   bubble_sort[pos] + cycle = r
  #   bubble_sort([pos]+1) + cucle =l 
  #   #stack instead?
  end

  # def continue 
  #   # puts "Carrying on..."
  # end



end





