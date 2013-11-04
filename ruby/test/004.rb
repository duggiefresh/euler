# A palindromic number reads the same both ways. The largest palindrome made from
# the product of two 2-digit numbers is 9009 = 91 × 99.
#
# Find the largest palindrome made from the product of two 3-digit numbers.

require_relative '../test_helper'

class Integer
  def palindrome?
    self.to_s == self.to_s.reverse
  end

  def factors
    (1..self).select { |n| (self % n).zero? }
  end
end

class PalindromeFinder
  attr_accessor :number, :digits_place, :all_palindromes
  attr_reader :kept_factors, :target

  def initialize(number, target, digits_place)
    @number = number
    @target = target
    @digits_place = digits_place
    @all_palindromes = all_palindromes
  end

  def find_it(digits)
  end

  def all_palindromes
    number.downto(target).inject { |array, x| array << x if x.palindrome? }
  end

  def find_paired_factors
  end

  def kept_factors
    kept_factors ||= number.factors.keep_if { |num| num.to_s.size == digits_place }
  end
end

describe PalindromeFinder do
  let(:digits) { 9999 }
  let(:pfinder) { PalindromeFinder.new(9999, 9000, 2) }
  let(:all_palindromes) { PalindromeFinder.new(100, 1, 2) }
  context '#find_it' do
    it 'finds the largest palindrome within the number of digits' do
      # pfinder.find_it.must_equal 9009
    end
  end

  context '#keep_factors' do
    it 'keeps the factors of a certain size' do
      PalindromeFinder.new(1000, 10, 2).kept_factors.must_equal [10, 20, 25, 40, 50]
    end
  end

  context '#find_all_palindromes' do
    it 'returns all the palindromes from the number to the target number' do
      all_palindromes.find_all_palindromes
      all_palindromes.all_palindromes.must_equal 
    end
  end
end

describe Integer do
  let(:number) { 9009 }
  context '#palindrome?' do
    it 'checks if the number is a palindrome' do
      number.palindrome?.must_equal true
    end
  end

  context '#factors' do
    it 'finds the factors for the number 12' do
      12.factors.must_equal [1, 2, 3, 4, 6, 12]
    end
  end
end
