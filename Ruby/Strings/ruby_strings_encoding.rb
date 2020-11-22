def transcode(string)
  string.encode('ISO-8859-1').force_encoding('UTF-8')
end