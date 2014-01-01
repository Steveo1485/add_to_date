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
end