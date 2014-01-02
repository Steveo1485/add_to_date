class Calendar

  def self.days_in_month(month)
    case month
    when 1, 3, 5, 7, 8, 10, 12
      return 31
    when 4, 6, 9, 11
      return 30
    when 2
      return 28
    end
  end

  def self.generate_calendar(month, days_to_add)
    all_calendars = []
    month_day_pairs = []

    until days_to_add <= 0
      month_day_pairs << [month, self.days_in_month(month)]
      days_to_add -= self.days_in_month(month)
      month += 1

      if month > 12
        all_calendars << Hash[month_day_pairs]
        month_day_pairs = []
        month = 1
      end

      if days_to_add <= 0
        all_calendars << Hash[month_day_pairs]
      end
    end
    return all_calendars
  end
end