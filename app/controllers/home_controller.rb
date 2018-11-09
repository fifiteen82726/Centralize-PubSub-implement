class HomeController < ApplicationController
  before_action :authenticate_user!

  def index
    if current_user.is_publisher
      @events = Event.where(user_id: current_user.id)
    else
      @events = Event.all
    end
  end
end
