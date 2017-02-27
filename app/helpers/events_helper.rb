module EventsHelper
  def output event
    content_tag :li, "#{event.name} (#{days_out event})"
  end

  def delete_link event
    link_to event, method: :delete do
      image_tag 'http://www.clipartbest.com/cliparts/pc5/XKE/pc5XKEqxi.jpg', width: 50
    end
  end

  def days_out event
    distance_of_time_in_words(Time.now, event.start) + " from now"
  end

  def duration
    distance_of_time_in_words event.start, event.end
  end
end
