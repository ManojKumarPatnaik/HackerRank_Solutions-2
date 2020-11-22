def rot13(secret_messages)
  secret_messages.collect { |message| message.tr("abcdefghijklmnopqrstuvwxyz", "nopqrstuvwxyzabcdefghijklm") }
end
