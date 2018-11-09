class PubSubController < ApplicationController
  def publish
    event = Event.find_by(id: params[:eventId])
    users = event.users

    if users.present?
      email_lists = users.pluck(:email)
      ids = users.pluck(:id)
      PubSub.notification(ids, event.name)
    end

    ok(email_lists)
  end


  def subscribe
    event = Event.find_by(id: params[:eventId])
    ok({eventName: event.name}) if current_user.subscribe(event)
  end
end
