def strike(string)
  string.prepend("<strike>").concat("</strike>")
end

def mask_article(string, array)
  array.each do |s|
    if string.include?(s)
      string.gsub!("#{s}", strike(s))
    end
  end
  string
end