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
    # puts self.join(",")


    array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12] #testing
    array2 = []
    c = array.length+1 #last instead?
    p = array.length
    is_prime = true

  while c >= 2
    while p >= 2
      if c % p == 0
        puts "#{c} can be divided exactly into #{p}"
        is_prime = false
        p = p-1
      else
        p = p-1
      end
      #binding.pry

    end
    if is_prime == true
      array2 << c
      is_prime = false
      c = c-1
    else
      c = c-1
    end
    #binding.pry
    end
    array2
  end


  def bubble_sort 
  # 	puts self.join(",")
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
              #puts "We're done."
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
    # puts "lets swap #{l} with #{r}!"
    stack = []
    stack << l
    stack << r
    # puts "The stack contains #{stack}"
    return stack.pop, stack.pop
  end
end





