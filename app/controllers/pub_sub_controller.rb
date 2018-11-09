class PubSubController < ApplicationController
  def publish
    event = Event.find_by(id: params[:eventId])
    subscriber_ids = event.subscribers_ids
    users = User.where(id: subscriber_ids)

    if users
      email_lists = users.pluck(:email) if subscriber_ids
      ids = users.pluck(:id)
      PubSub.notification(ids)
    end

    ok(email_lists)
  end


  def subscribe
    event = Event.find_by(id: params[:eventId])
    ok({eventName: event.name}) if current_user.subscribe(event)
  end
end
