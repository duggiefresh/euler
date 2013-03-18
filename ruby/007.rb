# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13,
# we can see that the 6th prime is 13.

# What is the 10_001st prime number?

require 'minitest/autorun'
require 'prime'

class Target
  def prime_finder(position)
    Prime.first(position).last
  end
end

describe Target, 'prime_finder' do
  it 'is asked to find the 6th prime number' do
    target = Target.new
    target.prime_finder(6).must_equal 13
  end
end

puts Target.new.prime_finder(10_001)
