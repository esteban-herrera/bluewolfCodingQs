#!/usr/bin/ruby

# This class will read an array and return the repeated element in the erray.
# This solution is an O(n) time and O(n) memory solution
class DuplicateFinder
  MAX_VALUE_IN_ARRAY = 5
  array=[1,2,3,4,4,5]

  array.each do |element|
	  # going to try to hash this element
	  # if it's already been hashed then this is a repeat, so return this element
	  # if it hasn't then hash it and continue
  end

  def findDuplicate(array)
	array.each do |element|
		puts "#{element}"
	end
  end
end



