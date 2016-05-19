#!/usr/bin/ruby

# This class will read an array and return the repeated element in the erray.
# This solution is an O(n) time and O(n) memory solution
# if it's already been hashed then this is a repeat, so return this element
# if it hasn't then hash it and continue
def findDuplicate(array)
  return nil if array.nil?
  elementHash = Hash.new
  array.each do |element|    
    return element unless (elementHash[element].nil?)    
    elementHash[element] = 1
  end
  return nil
end

def findDuplicateWithMergeSort(array)
    
end

def merge_sort(lst)
  if lst.length <= 1
    lst
  else
    mid = (lst.length / 2).floor
    left = merge_sort(lst[0..mid - 1])
    right = merge_sort(lst[mid..lst.length])
    merge(left, right)
  end
end

def merge(left, right)
  if left.empty?
    right
  elsif right.empty?
    left
  elsif left.first < right.first
    [left.first] + merge(left[1..left.length], right)
  else
    [right.first] + merge(left, right[1..right.length])
  end
end
