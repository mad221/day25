class EventController < ApplicationController
  def index
  end



  def show
  @event = Event.find(params[:id])
  end

before_action :authenticate_user!
  def new

  end
  def create

  end
end
