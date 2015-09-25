require_relative 'view'
require_relative 'model'

class Controller

  include Parser

  attr_reader :array, :list

  def initialize
    @view = View.new
    # @model = Model.new
    @array = []
    @list = nil
  end

  def run

    @view.welcome
    @view.enter_boroughs
    borough = @view.input
    if borough == "exit"
      abort("Thanks for NOT recycling... jerk.")
    end
    array << borough
    @view.enter_site_type
    type = @view.input
    array << type.capitalize

    list = Parser.load_data
    @view.display(list)


    # list = Parser.query(array)

  #   @view.diplay(list)
  #   # search_statement = '$where' + input
  #   # query(query_array)



  end

   def to_s
    # "There are #{list.length} sites in that area. Here is a list:"

    list.each do |item|
      " #{item} "
    end
  end
end


user = Controller.new
user.run
