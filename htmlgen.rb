#encoding: utf-8

def html (a,b,c,d,e,f,g,h,i,j,var)



fileHtml = File.new("test#{var}.html", "w+")
fileHtml.puts "<HTML><BODY>"
fileHtml.puts "<CENTER>"
fileHtml.puts "<h1>"
fileHtml.puts "Технологично Училище Електронни Системи"
fileHtml.puts "</h1>"
fileHtml.puts "<h3>"
fileHtml.puts "Технология на програмирането<br>Тест побитови операции"
fileHtml.puts "</h3>"
fileHtml.puts "<h5>"
fileHtml.puts "Вариянт №#{var}"
fileHtml.puts "</h5>"



fileHtml.puts "<TABLE border=1>"
fileHtml.puts "<TR>"
fileHtml.puts "<TD> a=?<br> int orig = #{a}<br> int insert = #{b}<br> int a = orig | (insert << 8)</TD>"
fileHtml.puts "<TD> b=?<br> int orig = #{a}<br> int insert = #{b}<br> int a = orig | (insert << 6)</TD>"
fileHtml.puts "</TR>"

fileHtml.puts "<TR>"
fileHtml.puts "<TD>AND=?\n int orig = #{a}<br> int insert = #{b}<br> int a = orig | (insert << 8)<br> int b = orig | (insert << 6)<br> int AND = a & b;</TD>"
fileHtml.puts "<TD>OR=?\n int orig = #{a}<br> int insert = #{b}<br> int a = orig | (insert << 7)<br> int b = orig | (insert << 5)<br> int OR = a & b;</TD>"
fileHtml.puts "</TR>"

fileHtml.puts "<TR>"
fileHtml.puts "<TD>OR=?<br> int orig = #{a}<br> int insert = #{b}<br> int a = orig | (insert << 7)<br> int b = orig | (insert << 5)<br> int XOR = a ^ b;</TD>"
fileHtml.puts "<TD>left=?<br> int i=#{a}<br> int left= #{a} | (1 << 10);</TD>"
fileHtml.puts "</TR>"

fileHtml.puts "<TR>"
fileHtml.puts "<TD>result=?<br> long value1=#{c}<br> long value2=#{d}<br> int result=(value1 << 3)^(value2 << 2)</TD>"
fileHtml.puts "<TD>result=?<br> int value1=#{e}<br> int value2=#{f}<br> int result=(value1 << 3)^(value2 << 2)</TD>"
fileHtml.puts "</TR>"

fileHtml.puts "<TR>"
fileHtml.puts "<TD>a=?<br> long testValue=#{c}<br> int a=0<br> if (testValue & (1 << 4))<br> {<br> a=1<br> }<br> else<br> {<br> a=2<br> }<br></TD>"
fileHtml.puts "<TD>a=? result=?<br> long testValue=#{c}<br> int a=0<br> int result=0<br> if((result=testValue & testValue ^ testValue | (1 << 4)))<br> {<br> a=1<br> }<br> else<br> {<br> a=2<br> }<br></TD>"
fileHtml.puts "</TR>"

fileHtml.puts "<TR>"
fileHtml.puts "<TD>result=?<br> int value1=#{g}<br> int value2=#{h}<br> int result =(value1 << 3)^(value2 << 2)</TD>"
fileHtml.puts "<TD>result=?<br> int value1=#{i}<br> int value2=#{j}<br> int result =(value1 << 5)^(value2 << 4)</TD>"
fileHtml.puts "</TR>"




fileHtml.puts "</TABLE>"
fileHtml.puts "</CENTER>"
fileHtml.puts "</BODY></HTML>"
fileHtml.close()

end
