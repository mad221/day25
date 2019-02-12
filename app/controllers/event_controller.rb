class EventController < ApplicationController
  def index
  end

  def show
  @event = Event.find(params[:id])
  end

  def new

  end
end
