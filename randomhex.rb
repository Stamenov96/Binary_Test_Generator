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
  
Prawn::Document.generate("test.pdf") do |pdf|
    table_data = [["a=?\n int orig = #{a}\n int insert = #{b}\n int a = orig | (insert<<8)"], 
                  ["<b>2. Row example text</b>", "<b>2343</b>"]]

    pdf.table(table_data, :width => 500, :cell_style => { :inline_format => true })
end
  
end
