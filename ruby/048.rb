# The series, 1**1 + 2**2 + 3**3 + ... + 10**10 = 10405071317.
#
# Find the last ten digits of the series, 1**1 + 2**2 + 3**3 + ... + 1000**1000.

require 'minitest/autorun'
require 'minitest/pride'

class Target
  attr_accessor :number
  def initialize number
    @number = number
  end

  def power_sum
    1.upto(number).map {|x| x**x}.inject {|sum, y| sum +=y}
  end

  def last_ten
    power_sum.to_s.split('').last(10).join('').to_i
  end
end

#0405071317

describe Target, 'finding the sum of powers' do
  let(:target) { Target.new(10) }

  it 'will find the sum of the powers for that number' do
    target.power_sum.must_equal 10405071317
  end

  it 'will find the last ten digits of the power_sum' do
    target.last_ten.must_equal "0405071317".to_i
  end
end

p Target.new(1000).last_ten
