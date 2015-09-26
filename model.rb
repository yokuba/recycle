require 'open-uri'
require 'rubygems'
require 'json'

require_relative 'recycling_bin'

module Parser

  def self.load_data
    data = []
    file = open("https://data.cityofnewyork.us/resource/sxx4-xhzg.json?").read
    parsed = JSON.parse(file)
    parsed.each do |bin|
       data << RecyclingBin.new(bin)
    # Read JSON from a file, iterate over objects
# file = open("shops.json")
# json = file.read

# parsed = JSON.parse(json)

# parsed["shop"].each do |shop|
#   p shop["id"]
end

      # p data << RecyclingBin.new(thing)

  end


  def self.query(search)
    answer = open("https://data.cityofnewyork.us/api/views/sxx4-xhzg/rows.json?$borough=#{search[0]}+site_type= #{search[1]}")
  end
end


