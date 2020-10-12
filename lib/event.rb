require 'time'

class Event
  attr_accessor :start_date
  attr_accessor :duration
  attr_accessor :title
  attr_accessor :attendees


  def initialize(start_date,duration,title,attendees_names)

    @start_date = Time.parse(start_date)

    @duration = duration*60

    @title = title

    @attendees = attendees_names

  end

  def postpone_24h

    @start_date = @start_date + 3600*24

  end

  def end_date

  end_date = @start_date + @duration

  end

  def is_past?

    if Time.now > @start_date
      return "true"
    else
      return "false"
    end
  end

  def is_future?

    if Time.now < @start_date
      return "true"
    else
      return "false"
    end
  end

  def is_soon?

    if Time.now <= @start_date || @start_date >= Time.now + 30*60
      return "true"
    else
      return "false"
    end
  end

  def to_s

    puts "> Titre : #{@title}"
    puts "> Date de début : #{@start_date.strftime("%Y-%m-%d %H:%M")}"
    puts "> Durée : #{@duration/60} minutes"
    puts "> Invités : #{@attendees.join(', ')}"

  end

end