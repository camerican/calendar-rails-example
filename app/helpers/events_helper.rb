module EventsHelper
  def output event
    content_tag :li, "#{event.name} (#{days_out event})"
  end

  def days_out event
    distance_of_time_in_words(Time.now, event.start) + " from now"
  end

  def duration
    distance_of_time_in_words event.start, event.end
  end
end
