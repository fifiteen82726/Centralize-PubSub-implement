class PubSub
  def self.notification(subscriber_ids=nil, event_name)
    subscriber_ids.each do |subscriber_id|
      ActionCable.server.broadcast(
        "web_notifications_channel_#{subscriber_id}",
        message: event_name,
      )
    end
  end
end
