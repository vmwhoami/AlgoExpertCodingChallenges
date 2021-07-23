 
def autocorrect(input)
  input.gsub(/\b(you|you+|u)\b/i, 'your client')
end
 
# => Look forward to meeting you.
# p autocorrect("Our team is excited to finish this with you.")
# => Our team is excited to finish this with your client.
# "Our team is excited to finish this with your client."
p autocorrect("youtube")
 
