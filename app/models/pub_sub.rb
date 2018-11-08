class PubSub
  def notification(subscriber_ids=nil)
    ActionCable.server.broadcast 'room_channel',
                                   content:  message.content,
                                   username: message.user.username
  end
end
