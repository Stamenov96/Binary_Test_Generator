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
while chetno1==chetno2
chetno1=even[rand(5)]
chetno2=even[rand(5)]
end


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
chetno3=even[rand(5)]
nechetno3=odd[rand(5)]
fileHtml.puts "<TD>result=?<br> long value1=#{c} &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; .........<br> long value2=#{d}<br> int result=(value1 << #{nechetno3})^(value2 << #{chetno3})</TD>"
fileHtml.puts "<TD>result=?<br> int value1=#{e} &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; .........<br> int value2=#{f}<br> int result=(value1 << #{nechetno3})^(value2 << #{chetno3})</TD>"
fileHtml.puts "</TR>"

fileHtml.puts "<TR>"
chetno4=even[rand(5)]
fileHtml.puts "<TD>a=?<br> long testValue=#{c} &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; .........<br> int a=0<br> if (testValue & (1 << #{chetno4}))<br> {<br> a=1<br> }<br> else<br> {<br> a=2<br> }<br></TD>"
fileHtml.puts "<TD>a=? result=?<br> long testValue=#{c} &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; .........<br> int a=0<br> int result=0<br> if((result=testValue & testValue ^ testValue | (1 << #{chetno4})))<br> {<br> a=1<br> }<br> else<br> {<br> a=2<br> }<br></TD>"
fileHtml.puts "</TR>"

fileHtml.puts "<TR>"
chetno5=even[rand(5)]
nechetno5=odd[rand(5)]

fileHtml.puts "<TD>result=?<br> int value1=#{g} &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ......... <br> int value2=#{h}<br> int result =(value1 << #{nechetno5})^(value2 << #{chetno5})</TD>"
fileHtml.puts "<TD>result=?<br> int value1=#{i} &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ......... <br> int value2=#{j}<br> int result =(value1 << #{nechetno5})^(value2 << #{chetno5})</TD>"
fileHtml.puts "</TR>"



fileHtml.puts "</TABLE>"
fileHtml.puts "</CENTER>"
fileHtml.puts "</BODY></HTML>"
fileHtml.close()


task1 = (a.to_i(16)|(b.to_i(16)<<"#{chetno1}".to_i)).to_s(16)
task2 = (a.to_i(16)|(b.to_i(16)<<"#{chetno2}".to_i)).to_s(16)
task3a = (a.to_i(16)|(b.to_i(16)<<"#{chetno1}".to_i)).to_s(16)
task3b=(a.to_i(16)|(b.to_i(16)<<"#{chetno2}".to_i)).to_s(16)
task3AND=(task3a.to_i(16) & task3b.to_i(16)).to_s(16)

task4a = (a.to_i(16)|(b.to_i(16)<<"#{nechetno1}".to_i)).to_s(16)
task4b=(a.to_i(16)|(b.to_i(16)<<"#{nechetno2}".to_i)).to_s(16)
task4AND=(task3a.to_i(16) & task3b.to_i(16)).to_s(16)


task5a = (a.to_i(16)|(b.to_i(16)<<"#{nechetno1}".to_i)).to_s(16)
task5b=(a.to_i(16)|(b.to_i(16)<<"#{nechetno2}".to_i)).to_s(16)
task5OR=(task3a.to_i(16) ^ task3b.to_i(16)).to_s(16)

task6 = (a.to_i(16)|(1<<"#{chetno}".to_i)).to_s(16)

task7a = (c.to_i(16)<<"#{nechetno3}".to_i).to_s(16)
task7b=(d.to_i(16)<<"#{chetno3}".to_i).to_s(16)
task7OR=(task7a.to_i(16) ^ task7b.to_i(16)).to_s(16)

task8a = (e<<"#{nechetno3}".to_i).to_s(16)
task8b=(f<<"#{chetno3}".to_i).to_s(16)
task8OR=(task7a.to_i(16) ^ task7b.to_i(16)).to_s(16)

task9a=0
if ((c.to_i(16) & (1<<"#{chetno4}".to_i))!=0)
task9a=1
else
task9a=2
end

task10a=0
task10res=0

if(((result=c.to_i(16) & c.to_i(16) ^ c.to_i(16) | (1<<"#{chetno4}".to_i)))!=0)
task10a=1
else
task10a=2
end

task11a = (g<<"#{nechetno5}".to_i).to_s(16)
task11b=(h<<"#{chetno5}".to_i).to_s(16)
task11res=(task11a.to_i(16) ^ task11b.to_i(16)).to_s(16)

task12a = (i<<"#{nechetno5}".to_i).to_s(16)
task12b=(j<<"#{chetno5}".to_i).to_s(16)
task12res=(task11a.to_i(16) ^ task11b.to_i(16)).to_s(16)



end
