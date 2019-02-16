class Admin::EventController < Admin::ApplicationController

  def show
    @event = Event.all
  end
end
