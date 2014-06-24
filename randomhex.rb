# coding: utf-8
require 'securerandom'
require './htmlgen'
require 'fileutils'
require 'pdfkit'

puts "How much tests do you want to generate?"
num=gets.chomp.to_i

FileUtils.mkpath('html') unless File.exists?('html')
FileUtils.mkpath('PDF') unless File.exists?('PDF')
FileUtils.mkpath('PDFansw') unless File.exists?('PDFansw')

for var in 1..num

Dir.chdir("./html")do
	html(var)
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
