def serial_average(string)
  matches = string.scan(/...-(\d+\.\d+)-*(\d+\.\d+)*/)

  x = matches[0][0].to_f
  unless matches[0][1].nil?
    y = matches[0][1].to_f
  else
    y = x
  end
  z = ((x + y) / 2).round(2)
  string[0, 4] + "#{z}"
end