# This is a basic web scraping program based on Sam Callenders tutorial at https://www.distilled.net/resources/web-scraping-with-ruby-and-nokogiri-for-beginners/

require 'HTTParty'
require 'Nokogiri'
require 'JSON'
require 'Pry'
require 'csv'

# this is how we request the page we are going to scrape
page = HTTParty.get('https://newyork.craigslist.org/search/pet')

# this will transform the scraped html from a string to a nokogiri object
parse_page = Nokogiri::HTML(page)

# this is an empty array where we will store all the craigslist pets
pets_array = []

# this is were we parse the data
parse_page.css('.content').css('.rows').css('.result-row').css('.result-info').css('.hdrlnk').map do |a|
	post_name = a.text
	pets_array.push(post_name)
end

# this will push your array into a CSV file
CSV.open('pets.csv', 'w') do |csv|
	csv << pets_array
end

# this runs the program during development
# Pry.start(binding)
