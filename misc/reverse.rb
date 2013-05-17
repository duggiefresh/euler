# Write a function that reverses a string.

require 'minitest/autorun'
require 'minitest/pride'

class String
  def reverse_split
    split('').inject([]) { |whole, x| whole.unshift x }.join
  end
end

describe String, 'Different custom methods to reverse a string' do
  let(:spaced_string) { String.new('Spaced string') }
  let(:string)        { String.new('string') }
  it :reverse_split do
    spaced_string.reverse_split.must_equal 'gnirts decapS'
    string.reverse_split.must_equal 'gnirts'
  end
end
