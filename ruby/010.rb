# The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.

# Find the sum of all the primes below two million.

require 'minitest/autorun'
require 'prime'

class Target
  def sum_of_primes(number)
    Prime.each(number).map { |prime_numbers| prime_numbers }.inject(:+)
  end
end

describe Target, 'sum_of_primes' do
  it 'is given the number 10' do
    target = Target.new
    target.sum_of_primes(10).must_equal(17)
  end
end

TARGET_NUMBER = 2_000_000
target = Target.new
puts target.sum_of_primes(TARGET_NUMBER)
