require 'open-uri'
require 'json'

require_relative 'recycling_bin'

module Parser

  def self.load_data
    file = open("https://data.cityofnewyork.us/resource/sxx4-xhzg.json?")
    file.each do |item|
    RecyclingBin.new(item)
    end
  end


  def self.query(search)
    answer = open("https://data.cityofnewyork.us/api/views/sxx4-xhzg/rows.json?$borough=#{search[0]}+site_type= #{search[1]}")
  end
end


