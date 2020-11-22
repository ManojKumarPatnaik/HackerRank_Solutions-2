combination = -> (number) do
  -> (another_number) do
    (1..number).inject(:*) / ((1..another_number).inject(:*) * (1..number-another_number).inject(:*))
  end
end

n = gets.to_i
r = gets.to_i
nCr = combination.(n)
puts nCr.(r)