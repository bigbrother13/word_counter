require 'open-uri'
require 'net/http'
require 'nokogiri'

doc = Nokogiri::HTML(URI.open('https://nokogiri.org/tutorials/installing_nokogiri.html'))

all_text = doc.css("p").text.strip.split("\n")[0]
words = all_text.split(" ")

top_words = words.first(25)

hash = Hash.new(0)

words.each_with_object({}) { |el| hash[el] +=1 if top_words.include?(el) }

puts hash
