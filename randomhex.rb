# coding: utf-8
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
    table_data = [
    ["a=?\n int orig = #{a}\n int insert = #{b}\n int a = orig | (insert      8)",
     "b=?\n int orig = #{a}\n int insert = #{b}\n int a = orig | (insert      6)"],
    ["AND=?\n int orig = #{a}\n int insert = #{b}\n int a = orig | (insert      8)\n int b = orig | (insert      6)\n int AND = a & b;",
    "OR=?\n int orig = #{a}\n int insert = #{b}\n int a = orig | (insert      7)\n int b = orig | (insert      5)\n int OR = a & b;"],
    ["OR=?\n int orig = #{a}\n int insert = #{b}\n int a = orig | (insert      7)\n int b = orig | (insert      5)\n int XOR = a ^ b;",
    "left=?\n int i=#{a}\n int left= #{a} | (1      10);"]
 
    ]
	
    pdf.table(table_data, :width => 500, :cell_style => { :inline_format => true })
	pdf.draw_text "<<", :at => [108,663]
	pdf.draw_text "<<", :at => [358,663]
	pdf.draw_text "<<", :at => [108,597]
	pdf.draw_text "<<", :at => [108,584]
	pdf.draw_text "<<", :at => [108,505]
	pdf.draw_text "<<", :at => [108,491]
	pdf.draw_text "<<", :at => [358,597]
	pdf.draw_text "<<", :at => [358,584]
	pdf.draw_text "<<", :at => [347,518]
	
	
	
end
  
end
