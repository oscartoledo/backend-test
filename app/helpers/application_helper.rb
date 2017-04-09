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

  def empty_img
    'empty.jpg'
  end

  def autenticated_user
    Devise.mappings.keys.map { |s| warden.user(scope: s, run_callbacks: false) }[0]
  end

  def user_login
    !autenticated_user.nil?
  end

end
