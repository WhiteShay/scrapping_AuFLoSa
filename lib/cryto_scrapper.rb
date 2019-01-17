require 'rubygems'
require 'nokogiri'
require 'open-uri'
   
crypto = Nokogiri::HTML(open("https://coinmarketcap.com/all/views/all/"))   
print crypto.xpath('//*[@id="currencies-all"]/tbody').text   # => Nokogiri::HTML::Document