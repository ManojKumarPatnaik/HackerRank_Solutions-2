def convert_temp(temperature, input_scale, **output_scale)
  if input_scale[:input_scale] == input_scale[:output_scale]
    temperature
  elsif input_scale[:input_scale] == 'celsius' and input_scale[:output_scale] == 'fahrenheit'
    # T(°F) = T(°C) × 1.8 + 32
    temperature * 1.8 + 32
  elsif input_scale[:input_scale] == 'celsius' and input_scale[:output_scale] == 'kelvin'
    # T(K) = T(°C) + 273.15
    temperature + 273.15
  elsif input_scale[:input_scale] == 'fahrenheit' and input_scale[:output_scale] == 'celsius'
    # T(°C) = (T(°F) - 32) / 1.8
    (temperature - 32) / 1.8
  elsif input_scale[:input_scale] == 'fahrenheit' and input_scale[:output_scale] == 'kelvin'
    # T(K) = (T(°F) + 459.67)× 5/9
    (temperature + 459.67) * 5/9
  elsif input_scale[:input_scale] == 'kelvin' and input_scale[:output_scale] == 'fahrenheit'
    # T(°F) = T(K) × 1.8 - 459.67
    temperature * 1.8 - 459.67
  elsif input_scale[:input_scale] == 'kelvin' and input_scale[:output_scale] == 'celsius'
    # T(°C) = T(K) - 273.15
    temperature - 273.15
  end
end