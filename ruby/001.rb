# If we list all the natural numbers below 10 that are multiples of 3 or 5,
# we get 3, 5, 6 and 9. The sum of these multiples is 23.
#
# Find the sum of all the multiples of 3 or 5 below 1000.

require 'minitest/autorun'

class TargetNumber
  def add_multiples(numbers)
    sum = 0
    numbers.times do |x|
      if x % 3 == 0 || x % 5 == 0
        sum += x
      end
    end
    sum
  end
end

### Test ###

describe TargetNumber do
  it 'is given the number 10' do
    target_number = TargetNumber.new
    target_number.add_multiples(10).must_equal 23
  end
end

### Trial ###

test_number = TargetNumber.new
p test_number.add_multiples(1000)
