class Day

  def initialize(date_string, number)
    @given_date = date_string
    @num_to_add = number
  end

  def get_day
    @given_date.split('/')[1].to_i
  end

  def get_month
    @given_date.split('/')[0].to_i
  end

  def calculate_day(total_days, calendar)
    calendar.each do |month, days|
      if total_days > days
        total_days -= days
      else
        return [month, total_days]
      end
    end
  end
end