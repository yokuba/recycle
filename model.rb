require 'open-uri'
require 'rubygems'
require 'json'

module Parser

  def self.load_data
    data = []
    file = open("https://data.cityofnewyork.us/resource/sxx4-xhzg.json?").read
    parsed = JSON.parse(file)
    parsed.each do |bin|
       data << bin
    end
  end
end


