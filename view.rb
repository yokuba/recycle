class View

  def welcome
    puts "Welcome to recyc.ly! The best app for your recycling desires."
  end

  def enter_boroughs
    puts "Enter an NYC Borough (or exit to quit):"
  end

  def input
    gets.chomp
  end

  def enter_site_type
    puts "Enter a site type, e.g. 'greenthumb', 'outdoor', 'indoor', 'subproperty':"
  end

  def enter_park_site_name
    puts "Enter the park name (if known); otherwise, hit 'enter':"
  end

  def list_of_sites(list)
    puts "Listed above are the #{list.size} sites in your borough. Where would you like to recycle?"
  end

  def addresses_at_site(site)
    puts "There is a recycling bins at this at #{site}"
  end

  def display(bin)
    puts bin
  end

end
