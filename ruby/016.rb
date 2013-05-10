# 2**15 = 32768 and the sum of its digits is 3 + 2 + 7 + 6 + 8 = 26.
#
# What is the sum of the digits of the number 2**1000?

require 'minitest/autorun'
require 'minitest/pride'

class Target
  attr_accessor :number

  def initialize number
    @number = number
  end

  def power_total
    2**number
  end

  def split_exponent
    power_total.to_s.split('').map(&:to_i)
  end

  def add_the_digits
    split_exponent.inject {|sum, z| sum += z }
  end
end

describe Target, "exponent's sum of the digits" do
  let(:target) { Target.new(15) }

  describe :power_total do
    it 'should find the power total' do
      target.power_total.must_equal 32768
    end
  end

  describe :split_exponent do
    it 'should split the exponent into an array of single digits' do
      target.split_exponent.must_equal [3, 2, 7, 6, 8]
    end
  end

  describe :add_the_digits do
    it 'should add the #split_exponent' do
      target.add_the_digits.must_equal 26
    end
  end
end

target = Target.new(15)
p target.power_total
