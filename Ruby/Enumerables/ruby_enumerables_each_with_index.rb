def skip_animals(animals, skip)
  array = Array.new
  animals.each_with_index { |animal, index|
    if (index >= skip)
      array.push("#{index}:#{animal}")
    end
  }
  return array
end