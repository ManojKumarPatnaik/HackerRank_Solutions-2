def full_name(first, *rest)
  fullname = ''
  fullname += first
  rest.each do |name|
    fullname += ' ' + name
  end
  fullname
end