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

  def list_of_sites
    puts "These are the list of sites near you. Where would you like to recycle?"
    #display all sites
  end

  def addresses_at_site(site)
    puts "There are #{site.count} recycling bins at this site at #{site}"
    # display all address
  end

  def display(results)
    puts results
  end

end
