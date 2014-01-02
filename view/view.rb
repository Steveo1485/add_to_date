class View
  def self.get_start_date
    puts "Please enter string of start date in [m]m/[d]d format:"
    start_date = STDIN.gets.chomp
  end

  def self.start_date_error
    return "Please try again. Be sure the date is in [m]m/[d]d format."
  end

  def self.get_number_of_days
    puts "Please enter a number of days to add:"
    number_of_days = STDIN.gets.chomp
  end

  def self.number_error
    return "Please try again. Make sure your number is an integer and not a float."
  end

  def self.new_date(month, day)
    return "#{month}/#{day}"
  end
end