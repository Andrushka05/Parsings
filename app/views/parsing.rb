require 'rubygems'
require 'nokogiri'
require 'open-uri'
#require 'watir'
#require 'watir-webdriver'

#browser = Watir::Browser.new
#browser.goto 'http://www.sima-land.ru/suveniry/eksklyuzivnye-tovary/'
#browser.select_list(:xpath => '//div[contains(concat(" ", @class, " "), "filter-limit")]/select').select_value('500')
page = Nokogiri::HTML(browser.html)
page.xpath('//ul/li/a').each{
|c| puts c.text
}