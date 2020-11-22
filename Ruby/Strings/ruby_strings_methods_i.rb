def process_text(string_array)
  result = ''
  string_array.each do |s|
    result += s.strip + ' '
  end
  result.chop
end