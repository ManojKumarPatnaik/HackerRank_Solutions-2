def sum_terms(n)
  (1..n).reduce(0) {|sum, num| sum + num**2 + 1 }
end