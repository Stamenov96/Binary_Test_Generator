# coding: utf-8
require 'securerandom'
require './htmlgen'
require 'fileutils'
require 'pdfkit'

puts "How much test do you want to generate?"
num=gets.chomp.to_i

for var in 1..num

#FileUtils.mkpath('pdf')
#Dir.chdir("./pdf")do
#	pdf(a,b,c,d,e,f,g,h,i,j,var)
#end	

FileUtils.mkpath('html')
Dir.chdir("./html")do
	html(var)#(a,b,c,d,e,f,g,h,i,j,var)
end

FileUtils.mkpath('PDF')
Dir.chdir("./PDF") do
	kit = PDFKit.new(File.new("../html/test#{var}.html"))
	file = kit.to_file("./test#{var}.pdf")
end



end
