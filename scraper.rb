require 'open-uri'
require 'net/http'
require 'nokogiri'

doc = Nokogiri::HTML(URI.open('https://nokogiri.org/tutorials/installing_nokogiri.html'))

description = doc.css("p").text.strip.split("\n")[0]
array = description.split(" ")

total = array.first(25)

hash = Hash.new(0)

array.each do |el|
    if total.include?(el)
        hash[el] +=1
    end
end

puts hash
