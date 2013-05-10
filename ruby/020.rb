=begin
n! means n * (n - 1) * ...  3 * 2 * 1

For example, 10! = 10 * 9 * ... * 3 * 2 * 1 = 3628800,
and the sum of the digits in the number 10! is 3 + 6 + 2 + 8 + 8 + 0 + 0 = 27.

Find the sum of the digits in the number 100!
=end

require 'minitest/autorun'
require 'minitest/pride'

class Target
  attr_accessor :number

  def initialize number
    @number = number
  end

  def factorial
    1.upto(number).inject(:*)
  end

  def sum_of_factorial_digits
    factorial.to_s.split('').map(&:to_i).inject { |sum, z| sum += z }
  end
end

describe Target, 'gotta find the sum of the factorial' do
  let(:target) { Target.new(10) }

  describe :factorial do
    it 'should return the factorial of the number' do
      target.factorial.must_equal 3628800
    end
  end

  describe :sum_of_factorial_digits do
    it 'should split and find the sum of the factorial total' do
      target.sum_of_factorial_digits.must_equal 27
    end
  end
end

p Target.new(10).sum_of_factorial_digits
