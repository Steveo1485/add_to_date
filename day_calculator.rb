require_relative 'view/view'
require_relative 'models/day'
require_relative 'models/calendar'

class Controller

  def self.run
    start_date = self.starting_date
    number_to_add = self.number_to_add
    date = self.get_date(start_date, number_to_add)
    start_month = date.get_month
    start_day = date.get_day
    total_days = date.total_days(start_day, number_to_add)
    calendar = self.get_calendar(start_month, total_days)
    new_day = date.calculate_day(total_days, calendar)
    self.print_new_date(new_day)
  end

  def self.valid_date_format?(date_string)
    date_check = date_string =~ /[0-9]{1,2}[\/][0-9]{1,2}$/
    if date_check == 0
      month = date_string.split('/')[0].to_i
      month_check = (1..12).include?(month)
      day = date_string.split('/')[1].to_i
      day_check = (1..Calendar.days_in_month(month)).include?(day)
      return month_check && day_check ? true : false
    else
      return false
    end
  end

  def self.valid_number?(number)
    non_digit_check = number =~ /\D/
    return non_digit_check == nil ? true : false
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

  def self.print_new_date(date)
    return View.new_date(date)
  end

  def self.get_calendar(start_month, total_days)
    return Calendar.generate_calendars(start_month, total_days)
  end

  def self.get_date(start_date, number_to_add)
    return Day.new(start_date, number_to_add)
  end

  def self.format_result(original, result)
    original_format = original.split('/')
    if original_format[0].start_with?("0")
      result[0].prepend("0")
    end
    if original_format[1].start_with?("0")
      result[1].prepend("0")
    end
    return result
  end
end

p Controller.run