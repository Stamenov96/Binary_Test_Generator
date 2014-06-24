# coding: utf-8
require 'securerandom'
require './htmlgen'
require 'fileutils'
require 'pdfkit'

puts "How much tests do you want to generate?"
num=gets.chomp.to_i

puts "Choose a difficulty - easy,medium,hard"
diff=gets.chomp.to_s
puts diff

while (diff!="easy" and diff!="medium" and diff!="hard")
puts "Wrong difficulty! Hint: easy,medium,hard"
diff=gets.chomp.to_s
end


FileUtils.mkpath('html') unless File.exists?('html')
FileUtils.mkpath('PDF') unless File.exists?('PDF')
FileUtils.mkpath('PDFansw') unless File.exists?('PDFansw')
FileUtils.mkpath('htmlansw') unless File.exists?('htmlansw')



for var in 1..num

Dir.chdir("./html")do
	html(var,diff)
end

Dir.chdir("./PDF") do
	kit = PDFKit.new(File.new("../html/test#{var}.html"))
	file = kit.to_file("./test#{var}.pdf")
end


Dir.chdir("./PDFansw") do
	kit = PDFKit.new(File.new("../htmlansw/test#{var}answ.html"))
	file = kit.to_file("./test#{var}answ.pdf")
end


end
