class HomeController < ApplicationController
  before_action :authenticate_user!

  def index
    @publisher = Publisher.first
    @subscribers = Subscriber.all
    @events = Event.all
  end
end
