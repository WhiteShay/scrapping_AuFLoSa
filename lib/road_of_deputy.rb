# frozen_string_literal: true

require 'rubygems'
require 'nokogiri'
require 'open-uri'

def get_mail
  deputy = []

  page = Nokogiri::HTML(open('https://www.nosdeputes.fr/deputes'))
  page.xpath('//div[@class="list_table"]//a').each do |row|
    deputy_page = Nokogiri::HTML(open('https://www.nosdeputes.fr' + row['href']))
    deputy_identity = deputy_page.xpath('//div[@class="info_depute"]/h1').text.split
    first_name = deputy_identity[0]
    last_name = deputy_identity[1]
    mail = deputy_page.xpath('//a[contains(@href, "@assemblee-nationale.fr")]').text
    deputy.push([{'first_name': first_name, 'last_name': last_name, 'mail': mail}])
  end
  print deputy
end

get_mail
