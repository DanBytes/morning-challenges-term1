# Write a class that implements the Caesar cipher.
# (http://practicalcryptography.com/ciphers/caesar-cipher/)
#
# When given a string, will return an uppercase string with each letter shifted
# forward in the alphabet by however many spots the cipher was initialized to.
#
# For example:
#
# c = CaesarCipher.new(5); # creates a CipherHelper with a shift of five
# c.decode('BFKKQJX') # returns 'WAFFLES'
#
# If something in the string is not in the alphabet (e.g. punctuation, spaces), simply leave it as is.
#
# The shift will always be in range of [1, 26].

class CaesarCipher
  def initialize(shift)
    @shift = shift
  end
  
  def encode(string)
    string.upcase!
    for i in 0...string.length
      next if (string[i].ord > 90) || (string[i].ord < 65)
      
      char_pos = string[i].ord + @shift
      if char_pos > 90
        string[i] = (64 + char_pos - 90).chr
      else
        string[i] = char_pos.chr
      end    
    end
    return string
  end
  
  def decode(string)
    string.upcase!
    for i in 0...string.length
      next if (string[i].ord > 90) || (string[i].ord < 65)
      
      char_pos = string[i].ord - @shift
      if char_pos < 65
        string[i] = (90 - (64 - char_pos)).chr
      else
        string[i] = char_pos.chr
      end    
    end
    return string
  end
end

#test
cypher = CaesarCipher.new(5)

puts cypher.decode("NY'X F XMNKY HNUMJW!!")