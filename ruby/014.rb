# The following iterative sequence is defined for the set of positive integers:

# n -> n/2    (n is even)
# n -> 3n + 1 (n is odd)

# Using the rule above and starting with 13, we generate the following sequence:

# 13 -> 40 -> 20 -> 10 > 5 -> 16 -> 8 -> 4 -> 2 -> 1
#
# It can be seen that this sequence (starting at 13 and finishing at 1)
# contains 10 terms. Although it has not been proved yet (Collatz Problem),
# it is thought that all starting numbers finish at 1.

# Which starting number, under one million, produces the longest chain?

# NOTE: Once the chain starts the terms are allowed to go above one million.

require 'minitest/autorun'
require 'minitest/pride'

class Target
end

describe Target, 'find the total amount of terms for the sequence of 13' do
  let(:target) { Target.new(13) }
  describe :sequence_finder do
    it 'should return even/odd sequences n -> n/2 and n -> 3n + 1' do
      target.sequence_finder.must_equal([13, 40, 20, 10, 5, 16, 8, 4, 2, 1])
    end
  end
  describe :sequence_count do
    it 'should find the total number of elements returned by the sequence_finder' do
      target.sequence_count.must_equal(10)
    end
  end
end
