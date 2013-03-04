# A palindromic number reads the same both ways. The largest palindrome made from the product
# of two 2-digit numbers is 9009 = 91 99.
#
# Find the largest palindrome made from the product of two 3-digit numbers.

largest = 0
(100..999).each {|x|
  (x..999).each {|y|
    product = x * y
    if product > max && product.to_s == product.to_s.reverse
      largest = product
    end
  }
}
puts largest
