# coding: utf-8
require 'securerandom'
require './htmlgen'
require 'fileutils'
require 'pdfkit'

puts "How much tests do you want to generate?"
num=gets.chomp.to_i

FileUtils.mkpath('html')
FileUtils.mkpath('PDF')

for var in 1..num

Dir.chdir("./html")do
	html(var)
end

Dir.chdir("./PDF") do
	kit = PDFKit.new(File.new("../html/test#{var}.html"))
	file = kit.to_file("./test#{var}.pdf")
end



end
