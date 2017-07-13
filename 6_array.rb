# Write a method named prime_chars? which takes array of strings
# and returns true if the sum of the characters is prime.
#
# Remember that a number is prime if the only integers that can divide it with no remainder are 1 and itself.
#
# Examples of length three
# prime_chars? ['abc']            # => true
# prime_chars? ['a', 'bc']        # => true
# prime_chars? ['ab', 'c']        # => true
# prime_chars? ['a', 'b', 'c']    # => true
#
# Examples of length four
# prime_chars? ['abcd']           # => false
# prime_chars? ['ab', 'cd']       # => false
# prime_chars? ['a', 'bcd']       # => false
# prime_chars? ['a', 'b', 'cd']   # => false


  def is_prime?()
      is_prime = true
        for i in 2..(self-1)
          if (self % i) ==0
            is_prime = false
          end
        end

      if is_prime
          puts "true"
        else
          puts "false"
        end
    end

def using_it(strings)
    p  strings.join.length.is_prime?
end


using_it('abcd')
