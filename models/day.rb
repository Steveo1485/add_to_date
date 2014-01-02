class Day

  def initialize(date_string, number)
    @given_date = date_string
    @num_to_add = number
  end

  def self.given_date_string?(string)
    string.is_a?(String)
  end

  def self.number_an_integer?(number)
    number.is_a?(Fixnum)
  end

  def get_day
    @given_date.split('/')[1].to_i
  end

  def get_month
    @given_date.split('/')[0].to_i
  end
end