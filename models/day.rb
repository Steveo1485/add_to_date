class Day

  def initialize(date_string, number)
    @given_date = date_string
    @num_to_add = number
  end

  def given_date_string?
    @given_date.is_a?(String)
  end

  def number_an_integer?
    @num_to_add.is_a?(Fixnum)
  end

  def get_day
    @given_date.split('/')[1].to_i
  end

  def get_month
    @given_date.split('/')[0].to_i
  end

  def days_in_month(month)
    case month
    when 1 || 3 || 5 || 7 || 8 || 10 || 12
      return 31
    when 4 || 6 || 9 || 11
      return 30
    when 2
      return 28
    end
  end
end