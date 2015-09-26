require_relative 'view'
require_relative 'model'

class Controller

  include Parser

  attr_reader :array, :list

  def initialize
    @view = View.new
    # @model = Model.new
    @list = {}
  end

  def run

    @view.welcome
    @view.enter_boroughs
    borough = @view.input.capitalize
    if borough == "exit"
      abort("Thanks for NOT recycling... jerk.")
    end
    list = Parser.load_data
    @view.display(list.select!{|bin|
      bin["borough"] == borough})

    @view.enter_site_type
    type = @view.input.capitalize
    @view.display(list.select!{|bin|
      bin["site_type"] == type})

      @view.enter_park_site_name
      park = @view.input
      list.select!{|bin|
        bin["park_site_name"] == park}
      list.each{|bin| @view.display(bin["address"])}

  end
    def to_s
    "There are #{list.size} sites in that area. Here is a list: \n"
    end
end


user = Controller.new
user.run
