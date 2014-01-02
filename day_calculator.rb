require_relative 'view/view'
require_relative 'models/day'

class Controller

  def self.valid_date_format?(string)
    month = string.split('/')[0].to_i
    month_check = (1..12).include?(month)

    day = string.split('/')[1].to_i
    day_check = (1..Calendar.days_in_month(month)).include?(day)

    month_check && day_check ? true : false
  end

  def self.valid_number?(number)
    number.is_a?(Fixnum) ? true : false
  end
end
