# Vowels
#
# Write a method that will take a string and
# return an array of vowels used in that string.
#
# Difficulty:
# 4/10
#
# Example:
# count_vowels("The quick brown fox") should return ["e","u","i","o","o"]
# count_vowels("Hello World") should return ["e","o","o"]
#
# Check your solution by running the tests:
# ruby tests/04_vowels_test.rb
#

<<<<<<< HEAD
#solution 1
# def vowels (string)
#   vowels = []
  
#   string.split('').each do |char| 
#     case char

#     when "a", "e", "i", "o", "u"
#       vowels.push(char)
    
#     when "A", "E", "I", "O", "U"
#       vowels.push(char)
#     end

#   end
# puts vowels
# end

def vowels (string)
  vowels = []

  string.chars.each do |chars|
    case chars
      when "a", "e", "i", "o", "u"
        vowels << chars
    end
  end
puts vowels
end
vowels("Hello World")
=======
def vowels (string)
  string.scan(/[aeiou]/i)
end
>>>>>>> b028df5d644e116007105a13b9522c8e1282f993
