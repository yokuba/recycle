class View

  def welcome
    system 'clear'
    puts "Welcome to recyc.ly! The best app for your recycling desires."
  end

  def enter_boroughs
    puts "Enter an NYC Borough (or exit to quit):"
  end

  def input
    gets.chomp
  end

  def enter_site_type
    puts "\nEnter a site type, e.g. 'greenthumb', 'outdoor', 'indoor', 'subproperty':"
  end

  def enter_park_site_name
    puts "\nEnter the park or site name; otherwise, hit 'enter' to exit:"
  end

  def list_of_sites(list)
    puts "\n \nThere are #{list.size} sites in your borough."
  end

  def display_parks(list)
    puts "\n\nThere are #{list.size} sites. They are:\n\n"
    thing = list.uniq
    thing.each do |site|
     puts "#{site}"
   end
 end

  def addresses_at_site(site)
    puts "\n There is a recycling bin located at #{site}"
  end

  def display(bin)
    puts bin
  end

end
