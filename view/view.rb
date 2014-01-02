class View
  def self.get_start_date
    puts "Please enter string of start date in [m]m/[d]d format:"
    start_date = STDIN.gets.chomp
  end

  def self.get_number_of_days
    puts "Please enter a number of days to add:"
    number_of_days = STDIN.gets
  end
end