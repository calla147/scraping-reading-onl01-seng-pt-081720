require 'nokogiri'
require 'open-uri'

html = open("https://flatironschool.com/")

doc = Nokogiri::HTML(html)

doc.css(".headline-26OIBN")

doc.css(".headline-26OIBN").text

puts doc.css(".headline-26OIBN")

courses = doc.css("#2a778efd-1685-5ec6-9e5a-0843d6a88b7b .inlineMobileLeft-2Yo002.imageTextBlockGrid3-2XAK6G")
 
courses.each do |course|
  puts course.text.strip #strip clean up extra white space 
    # and return text inside the element
end

#XML element 
p doc.css("#2a778efd-1685-5ec6-9e5a-0843d6a88b7b .inlineMobileLeft-2Yo002.imageTextBlockGrid3-2XAK6G")[0].name
# => "div"

#.attributes will return ids, names, and classes
p doc.css("#2a778efd-1685-5ec6-9e5a-0843d6a88b7b .inlineMobileLeft-2Yo002.imageTextBlockGrid3-2XAK6G")[0].attributes
#=> {"class"=>#<Nokogiri::XML::Attr:0x3fd0e50e1b04 name="class" value="inlineMobileLeft-2Yo002 imageTextBlockGrid3-2XAK6G">}