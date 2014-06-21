# coding: utf-8
require 'securerandom'
require 'prawn'



a=SecureRandom.hex(2)
b=SecureRandom.hex(2)
#p a.hex.to_s(2)
c=SecureRandom.hex(4)
d=SecureRandom.hex(4)
e=rand(1000)
f=rand(1000)
g=rand(1000)
h=rand(1000)
i=rand(1000)
j=rand(10000)

Prawn::Document.generate("test.pdf") do |pdf|
	
	
    table_data = [
    ["a=?\n int orig = #{a}\n int insert = #{b}\n int a = orig | (insert      8)",
     "b=?\n int orig = #{a}\n int insert = #{b}\n int a = orig | (insert      6)"],
    ["AND=?\n int orig = #{a}\n int insert = #{b}\n int a = orig | (insert      8)\n int b = orig | (insert      6)\n int AND = a & b;",
    "OR=?\n int orig = #{a}\n int insert = #{b}\n int a = orig | (insert      7)\n int b = orig | (insert      5)\n int OR = a & b;"],
    ["OR=?\n int orig = #{a}\n int insert = #{b}\n int a = orig | (insert      7)\n int b = orig | (insert      5)\n int XOR = a ^ b;",
    "left=?\n int i=#{a}\n int left= #{a} | (1      10);"],
    ["result=?\n long value1=#{c}\n long value2=#{d}\n int result=(value1      3)^(value2       2)",
    "result=?\n int value1=#{e}\n int value2=#{f}\n int result=(value1      3)^(value2      2)"],
    ["a=?\n long testValue=#{c}\n int a=0\n if (testValue & (1      4))\n {\n a=1\n }\n else\n {\n a=2\n }\n",
    "a=? result=?\n long testValue=#{c}\n int a=0\n int result=0\n if((result=testValue & testValue ^ testValue | (1      4)))\n {\n a=1\n }\n else\n {\n a=2\n }\n"],
    ["result=?\n int value1=#{g}\n int value2=#{h}\n int result =(value1      3)^(value2      2)",
    "result=?\n int value1=#{i}\n int value2=#{j}\n int result =(value1      5)^(value2      4)"]
	
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
	
	pdf.font "#{Prawn::BASEDIR}/data/fonts/MCTIMEI.TTF" 
	pdf.text "Технологично Училище Електронни Системи"

	
	  
end


fileHtml = File.new("test.html", "w+")
fileHtml.puts "<HTML><BODY>"
fileHtml.puts "<CENTER>"
fileHtml.puts "<TABLE border=1>"
fileHtml.puts "<TR>"
fileHtml.puts "<TD> a=?<br> int orig = #{a}<br> int insert = #{b}<br> int a = orig | (insert<<8)</TD>"
fileHtml.puts "<TD> a=?<br> int orig = #{a}<br> int insert = #{b}<br> int a = orig | (insert<<8)</TD>"
fileHtml.puts "</TR>"

fileHtml.puts "<TR>"
fileHtml.puts "<TD>AND=?\n int orig = #{a}<br> int insert = #{b}<br> int a = orig | (insert      8)<br> int b = orig | (insert      6)<br> int AND = a & b;</TD>"
fileHtml.puts "<TD>OR=?\n int orig = #{a}<br> int insert = #{b}<br> int a = orig | (insert      7)<br> int b = orig | (insert      5)<br> int OR = a & b;</TD>"
fileHtml.puts "</TR>"

fileHtml.puts "<TR>"
fileHtml.puts "<TD>OR=?\n int orig = #{a}\n int insert = #{b}\n int a = orig | (insert      7)\n int b = orig | (insert      5)\n int XOR = a ^ b;</TD>"
fileHtml.puts "<TD>left=?\n int i=#{a}\n int left= #{a} | (1      10);</TD>"
fileHtml.puts "</TR>"

fileHtml.puts "<TR>"
fileHtml.puts "<TD>result=?\n long value1=#{c}\n long value2=#{d}\n int result=(value1      3)^(value2       2)</TD>"
fileHtml.puts "<TD>result=?\n int value1=#{e}\n int value2=#{f}\n int result=(value1      3)^(value2      2)</TD>"
fileHtml.puts "</TR>"

fileHtml.puts "<TR>"
fileHtml.puts "<TD>a=?\n long testValue=#{c}\n int a=0\n if (testValue & (1      4))\n {\n a=1\n }\n else\n {\n a=2\n }\n</TD>"
fileHtml.puts "<TD>a=? result=?\n long testValue=#{c}\n int a=0\n int result=0\n if((result=testValue & testValue ^ testValue | (1      4)))\n {\n a=1\n }\n else\n {\n a=2\n }\n</TD>"
fileHtml.puts "</TR>"




fileHtml.puts "</TABLE>"
fileHtml.puts "</CENTER>"
fileHtml.puts "</BODY></HTML>"
fileHtml.close()



