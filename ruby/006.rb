# The sum of the squares of the first ten natural numbers is,
#
# 1**2 + 2**2 + ... + 10**2 = 385
#
# The square of the sum of the first ten natural numbers is,
#
# (1 + 2 + ... + 10)**2 = 55**2 = 3025
#
# Hence the difference between the sum of the squares of the first
# ten natural numbers and the square of the sum is 3025 - 385 = 2640.
#
# Find the difference between the sum of the squares of the first one hundred
# natural numbers and the square of the sum.

require 'minitest/autorun'

class Target
  def difference(number)
    numbers = number.downto(1)
    square_of_sum  = numbers.inject { |sum, x| sum += x } ** 2
    sum_of_squares = numbers.map { |x| x ** 2 }.inject(:+)
    square_of_sum - sum_of_squares
  end
end

describe Target do
  it 'is given the number 10' do
    target = Target.new
    target.difference(10).must_equal 2640
  end
end

target = Target.new
puts solution = target.difference(100)
