require 'securerandom'
require 'prawn'


a=SecureRandom.hex(2)
b=SecureRandom.hex(2)
p a.hex.to_s(2)

Prawn::Document.generate "hellohex.pdf" do |pdf|
  pdf.text "a=?\n"
  pdf.text "int orig = #{a}\n"
  pdf.text "int insert = #{b}\n"
  pdf.text "int a = orig | (insert<<8)"
  
end
