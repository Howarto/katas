require 'rubygems'
require 'nokogiri'
require 'open-uri'

url = "http://www.walmart.com/search/search-ng.do?ic=16_0&Find=Find&search_query=mario&Find=Find&search_constraint=0"
doc = Nokogiri::HTML(open(url))
doc.css(".item").each do |item|
  title = item.at_css(".ListItemLink").text
  price_big = item.css(".camelPrice").first.text
  puts "#{title} : #{price_big}"
end
