class EventController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]

  def index
  end

  def show
  @event = Event.find(params[:id])
  end

  def new

  end
  def create

  end
end
