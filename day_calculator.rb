require_relative 'view/view'
require_relative 'models/day'
require_relative 'models/calendar'

class Controller

  def self.run

    start_date = self.starting_date
    number_to_add = self.number_to_add


    day_calculator = Day.new(start_date, number_to_add)
    start_day = day_calculator.get_day
    total_days = day_calculator.total_days(start_day, number_to_add)

    start_month = day_calculator.get_month

    calendar = Calendar.generate_calendar(start_month, total_days)

    new_day = day_calculator.calculate_day(total_days, calendar)

    View.new_date(new_day)
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

  def self.starting_date
    start_date = View.get_start_date
    until self.valid_date_format?(start_date)
      puts View.start_date_error
      start_date = View.get_start_date
    end
    return start_date
  end

  def self.number_to_add
    number = View.get_number_of_days
    until self.valid_number?(number)
      puts View.number_error
      number = View.get_number_of_days
    end
    return number.to_i
  end
end

# p Controller.run