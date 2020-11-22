n = gets.to_i

def is_prime?(n)
  2.upto(Math.sqrt(n).round()).each do |x|
    return false if n % x == 0
  end
  true
end

def is_palindrome?(n)
  n.to_s == n.to_s.reverse
end

palindromic_primes_array = -> (array_size) do
  2.upto(Float::INFINITY).lazy.map { |x| x if (is_palindrome?(x) && is_prime?(x)) }.select {|item| item.is_a? Integer}.first(n)
end

print palindromic_primes_array.(n)