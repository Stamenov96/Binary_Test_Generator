require 'securerandom'

a=SecureRandom.hex(2)
p a
b=SecureRandom.hex(2)
p b
p a.hex.to_s(2)
