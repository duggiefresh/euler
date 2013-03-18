# 2520 is the smallest number that can be divided by each of the numbers from
# 1 to 10 without any remainder.
#
# What is the smallest positive number that is evenly divisble by all the numbers from
# 1 to 20?

require 'minitest/autorun'

class TargetNumber
  def smallest_positive_number(number)
    number.downto(1).inject { |sum, x| sum.lcm x }
  end
end

### TEST ###

describe TargetNumber, 'Find the smallest positive number.' do
  it 'given the numbers 1 through 10' do
    target = TargetNumber.new
    target.smallest_positive_number(10).must_equal 2520
  end
end

### TRIAL ###

target = TargetNumber.new
solution = target.smallest_positive_number(20)
puts "The smallest positive number that is easily divisible by 1 through 20 is #{solution}."
