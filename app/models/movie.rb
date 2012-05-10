class Movie < ActiveRecord::Base
  has_many :reviews

  def showtime
    "#{formatted_date} #{formatted_time}"
#    "#{formatted_date} (#{formatted_time})"
  end

  def formatted_date
    showtime_date.strftime("%Y-%m-%d")
  end

  def formatted_time
    #format_string = showtime_time.min.zero? ? "%l%p" : "%l:%M%p"
    puts showtime_time
    showtime_time.strftime("%H:%M")
  end

end
