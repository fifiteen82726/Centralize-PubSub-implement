class HomeController < ApplicationController
  before_action :authenticate_user!

  def index
    if current_user.is_publisher
      @events = Event.where(user_id: current_user.id)
    else
      events = Event.all
      @subscribe_events = User.includes(:events).find_by(id: current_user.id).events
      @other_events = events - @subscribe_events
    end
  end
end
