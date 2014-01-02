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
end