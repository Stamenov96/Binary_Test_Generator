#encoding: utf-8

def html (var)#(a,b,c,d,e,f,g,h,i,j,var)

a=SecureRandom.hex(2)
b=SecureRandom.hex(2)
c=SecureRandom.hex(4)
d=SecureRandom.hex(4)
e=rand(1000)
f=rand(1000)
g=rand(1000)
h=rand(1000)
i=rand(1000)
j=rand(10000)





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

odd=[1,3,5,7,9]
even=[2,4,6,8,10]

chetno1=even[rand(5)]
chetno2=even[rand(5)]

fileHtml.puts "<TABLE border=1>"
fileHtml.puts "<TR>"
fileHtml.puts "<TD> a=? <br> int orig = #{a} &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; .........<br> int insert = #{b}<br> int a = orig | (insert << #{chetno1})</TD>"
fileHtml.puts "<TD> b=?<br> int orig = #{a} &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ......... <br> int insert = #{b}<br> int a = orig | (insert << #{chetno2})</TD>"
fileHtml.puts "</TR>"

fileHtml.puts "<TR>"
fileHtml.puts "<TD>AND=?<br> int orig = #{a} &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; .........<br> int insert = #{b}<br> int a = orig | (insert << #{chetno1})<br> int b = orig | (insert << #{chetno2})<br> int AND = a & b;</TD>"
nechetno1=odd[rand(5)]
nechetno2=odd[rand(5)]
fileHtml.puts "<TD>OR=?<br> int orig = #{a} &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; .........<br> int insert = #{b}<br> int a = orig | (insert << #{nechetno1})<br> int b = orig | (insert << #{nechetno2})<br> int OR = a & b;</TD>"
fileHtml.puts "</TR>"

fileHtml.puts "<TR>"
fileHtml.puts "<TD>OR=?<br> int orig = #{a} &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; .........<br> int insert = #{b}<br> int a = orig | (insert << #{nechetno1})<br> int b = orig | (insert << #{nechetno2})<br> int XOR = a ^ b;</TD>"
chetno=even[rand(5)]
fileHtml.puts "<TD>left=?&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; .........<br> int i=#{a}<br> int left= #{a} | (1 << #{chetno});</TD>"
fileHtml.puts "</TR>"


fileHtml.puts "<TR>"
chetno=even[rand(5)]
nechetno=odd[rand(5)]
fileHtml.puts "<TD>result=?<br> long value1=#{c} &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; .........<br> long value2=#{d}<br> int result=(value1 << #{nechetno})^(value2 << #{chetno})</TD>"
fileHtml.puts "<TD>result=?<br> int value1=#{e} &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; .........<br> int value2=#{f}<br> int result=(value1 << #{nechetno})^(value2 << #{chetno})</TD>"
fileHtml.puts "</TR>"

fileHtml.puts "<TR>"
chetno=even[rand(5)]
fileHtml.puts "<TD>a=?<br> long testValue=#{c} &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; .........<br> int a=0<br> if (testValue & (1 << #{chetno}))<br> {<br> a=1<br> }<br> else<br> {<br> a=2<br> }<br></TD>"
fileHtml.puts "<TD>a=? result=?<br> long testValue=#{c} &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; .........<br> int a=0<br> int result=0<br> if((result=testValue & testValue ^ testValue | (1 << #{chetno})))<br> {<br> a=1<br> }<br> else<br> {<br> a=2<br> }<br></TD>"
fileHtml.puts "</TR>"

fileHtml.puts "<TR>"
chetno=even[rand(5)]
nechetno=odd[rand(5)]

fileHtml.puts "<TD>result=?<br> int value1=#{g} &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ......... <br> int value2=#{h}<br> int result =(value1 << #{nechetno})^(value2 << #{chetno})</TD>"
fileHtml.puts "<TD>result=?<br> int value1=#{i} &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ......... <br> int value2=#{j}<br> int result =(value1 << #{nechetno})^(value2 << #{chetno})</TD>"
fileHtml.puts "</TR>"



fileHtml.puts "</TABLE>"
fileHtml.puts "</CENTER>"
fileHtml.puts "</BODY></HTML>"
fileHtml.close()


end
