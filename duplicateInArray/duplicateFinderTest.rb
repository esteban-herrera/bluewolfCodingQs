#!/usr/bin/ruby

require 'minitest/autorun'
require_relative 'duplicateFinder'

class TestDuplicateFinder < Minitest::Test
  def test_NoDuplicateInArray
    testArray = [1,2,3,4,5,6,7,8,9]
    dupe = findDuplicate(testArray)
    assert_equal(nil,dupe)
  end

  def test_DuplicateInArray
    testArray = [1,2,3,4,5,5,6,7,8]
    dupe = findDuplicate(testArray)
    assert_equal(5,dupe)
  end

  def test_EmptyArray
    testArray = []
    assert_equal(nil,findDuplicate(testArray))
  end

  def test_NilArray
    assert_equal(nil,findDuplicate(nil))
  end

  def test_OnlyDupes
    testArray = [2,2]
    dupe = findDuplicate(testArray)
    assert_equal(2, dupe)
  end

  def test_HugeArray
    testArray = [*1..1000000]
    testArray << 42
    dupe = findDuplicate(testArray)
    assert_equal(42,dupe)
  end
  # duplicates occur at the beginning
  # duplicate occur at end of array
  # (already have) duplicate in middle of array
  # duplicate is not contiguous
  # test an unsorted array where duplicates can occur (begin, end, mid)
  # more than one duplicate
  # dupclidate (or repeatered) more than 2 (3 or more)
end
