# If we list all the natural numbers below 10 that are multiples of 3 or 5,
# we get 3, 5, 6 and 9. The sum of these multiples is 23.
#
# Find the sum of all the multiples of 3 or 5 below 1000.

require_relative 'test_helper'

class MultipleFinder
  attr_accessor :number

  def initialize(number)
    @number = number
  end

  def add_multiples
    sum = 0
    number.times { |num| sum += num if num % 3 == 0 || num % 5 == 0 }
    sum
  end
end

### Test ###

describe MultipleFinder do
  context 'the number is 10' do
    let(:multiple_finder) { MultipleFinder.new(10) }

    it 'adds all the multiples and retruns 23' do
      multiple_finder.add_multiples.must_equal 23
    end
  end
end

### Trial ###

test_number = MultipleFinder.new 1000
p test_number.add_multiples
