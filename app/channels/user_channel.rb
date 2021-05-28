class UserChannel < ApplicationCable::Channel
  def subscribed
    stream_for current_user
  end

  def unsubscribed
    puts "unsubscribed ->"
      # Any cleanup needed when channel is unsubscribed
  end
end
