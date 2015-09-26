
#put in class object to format the data rows properly

class RecyclingBin

  def initialize args = {}
    @borough = args["borough"]
    @site_type = args["site_type"]
    @park_site_name = args["park_site_name"]
    @address = args["address"]
    @latitude = args["latitude"]
    @longitude = args["longitude"]
  end

  def to_s
    "There are sites in that area. Here is a list: \n"

    end
  end


