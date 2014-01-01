class Calendar

  def days_in_month(month)
    case month
    when 1, 3, 5, 7, 8, 10, 12
      return 31
    when 4, 6, 9, 11
      return 30
    when 2
      return 28
    end
  end

  def generate_calendar(month, days_to_add)
    calendar = {}
    until days_to_add <= 0
      calendar[month] = days_in_month(month)
      days_to_add -= days_in_month(month)
      month += 1
    end
    return calendar
  end
end