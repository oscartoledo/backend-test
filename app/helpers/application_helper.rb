module ApplicationHelper

  def date_time_format (date)
    date.strftime '%b %d @ %H:%M'
  end

  def date_format (date)
    date.strftime '%b %d'
  end

  def time_format (date)
    date.strftime '%H:%M'
  end

  def price_format (number)
    number_to_currency number, precision: 2
  end

end
