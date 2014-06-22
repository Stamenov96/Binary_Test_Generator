# coding: utf-8
require 'securerandom'
require './htmlgen'
require './pdfgen'
require 'fileutils'

puts "How much test do you want to generate?"
num=gets.chomp.to_i

for var in 1..num

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

FileUtils.mkpath('pdf')
Dir.chdir("./pdf")do
	pdf(a,b,c,d,e,f,g,h,i,j,var)
end	
	html(a,b,c,d,e,f,g,h,i,j,var)

end
