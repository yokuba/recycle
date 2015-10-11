require_relative 'view'
require_relative 'model'

class Controller

  include Parser

  attr_reader :array, :list

  def initialize
    @view = View.new
    @list = {}
  end

  def run
    sites = []
    @view.welcome
    @view.enter_boroughs
    borough = @view.input
    if borough == "exit"
      abort("Thanks for NOT recycling... jerk.")
    end
    list = Parser.load_data
    list.select!{|bin| bin["borough"] == borough}
    @view.list_of_sites(list)

    @view.enter_site_type
    type = @view.input.capitalize
    list.select!{|bin|
      bin["site_type"] == type}

    list.select!{|bin| sites << (bin["park_site_name"])}
    @view.display_parks(sites)

      @view.enter_park_site_name
      park = @view.input
      list.select!{|bin|
        bin["park_site_name"] == park}
      list.each{|bin| @view.addresses_at_site(bin["address"])}
  end
end


user = Controller.new
user.run
