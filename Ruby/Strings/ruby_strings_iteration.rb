def count_multibyte_char(string)
  number_of_multibyte_chars = 0
  string.each_char {|x| number_of_multibyte_chars+=1 if x.bytesize > 1}
  number_of_multibyte_chars
end