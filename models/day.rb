class Day

  def initialize(date_string, number)
    @given_date = date_string
    @num_to_add = number
  end

  def given_date_string?
    @given_date.is_a?(String)
  end
end