class Timer
  #write your code here
  attr_accessor :seconds

  def initialize
    @seconds = 0
  end

  def padded(number)
    if number < 10
      "0" + number.to_s
    else
      number.to_s
    end
  end

  def time_string
    if @seconds == 0
      return "00:00:00"
    elsif @seconds > 60
      minutes = @seconds/60
      @seconds = @seconds - 60*minutes
      if minutes > 60
        hours = minutes/60
        minutes = minutes - 60*hours
        return padded(hours) + ":" + padded(minutes) + ":" + padded(@seconds)
      else
        return "00:" + padded(minutes) + ":" + padded(@seconds)
      end
    else
      return "00:00:" + padded(@seconds)
    end
    
  end
end
