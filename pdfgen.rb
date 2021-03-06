#encoding: utf-8

require 'prawn'

def pdf (a,b,c,d,e,f,g,h,i,j,var)


Prawn::Document.generate("test#{var}.pdf") do |pdf|
	
	
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
end
