# Unique
#
# Ruby has a handy array.unique helper which removes
# duplicates. Imlpement your own version of the helper,
# without using .unique.
#
# Difficulty:
# 5/10
#
# Example:
# unique([1,2,3,3]) should return [1,2,3]
# unique(["tom", "tom", "tom"]) should return ["tom"]
#
# Hints:
# A hash could be helpful in your solution.
#
# Check your solution by running the tests:
# ruby tests/16_unique_test.rb
#

# def unique (mylist)
#  newlist = []
#  for item in mylist do
#     newlist.push(item) if !newlist.include?(item)
#  end
#     return newlist
# end


def unique (mylist)
<<<<<<< HEAD
  return mylist | mylist
=======
  hash = {}
  mylist.each { |x| hash[x] = true }
  hash.keys
>>>>>>> b028df5d644e116007105a13b9522c8e1282f993
end
