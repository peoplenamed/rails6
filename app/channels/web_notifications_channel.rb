class WebNotificationsChannel < ApplicationCable::Channel
  def subscribed
  	puts "SUBSCRIBED ->"
    stream_from "web_notifications_channel"
  end

  def unsubscribed
  	puts "unsubscribed ->"
      # Any cleanup needed when channel is unsubscribed
  end
end
