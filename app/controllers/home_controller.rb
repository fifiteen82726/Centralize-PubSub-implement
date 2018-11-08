class HomeController < ApplicationController
  def index
    @publisher = Publisher.first
    @subscribers = Subscriber.all
    @events = Event.all
  end
end
