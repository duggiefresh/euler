# The prime factors of 13195 are 5, 7, 13 and 29.

# What is the largest prime factor of the number 600851475143 ?

TARGET = 600_851_475_143
SMALLEST_PRIME = 2

while TARGET > 1
  TARGET % SMALLEST_PRIME == 0 ? TARGET /= SMALLEST_PRIME : SMALLEST_PRIME += 1
end

puts SMALLEST_PRIME
