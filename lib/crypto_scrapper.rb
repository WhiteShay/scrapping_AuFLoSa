# frozen_string_literal: true

require 'rubygems'
require 'nokogiri'
require 'open-uri'

def crypto_scan
  crypto_names = []
  crypto_prices = []
  crypto = Nokogiri::HTML(open('https://coinmarketcap.com/all/views/all/'))
  crypto.xpath('//td[@class="text-left col-symbol"]').each do |row|
    crypto_names.push(row.text)
  end
  crypto.xpath('//a[@class="price"]').each do |row|
    crypto_prices.push(row.text)
  end
  crypto_list = crypto_names.zip(crypto_prices)
  puts crypto_list
  crypto_list
end

crypto_scan
