require_relative 'view/view'
require_relative 'models/day'
require_relative 'models/calendar'

class Controller

  def self.run
    start_date = View.get_start_date
    until self.valid_date_format?(start_date)
      puts View.start_date_error
      start_date = View.get_start_date
    end

    number = View.get_number_of_days
    until self.valid_number?(number)
      puts View.number_error
      number = View.get_number_of_days
    end
  end

  def self.valid_date_format?(string)
    month = string.split('/')[0].to_i
    month_check = (1..12).include?(month)

    day = string.split('/')[1].to_i
    day_check = (1..Calendar.days_in_month(month)).include?(day)

    month_check && day_check ? true : false
  end

  def self.valid_number?(number)
    non_digit_check = number =~ /\D/
    non_digit_check == nil ? true : false
  end
end

Controller.run