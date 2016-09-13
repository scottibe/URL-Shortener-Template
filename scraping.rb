require 'nokogiri'
require 'open-uri'


doc = Nokogiri::HTML(open("http://flatironschool.com/"))
puts doc.css("site-header__supernav__inner") 

