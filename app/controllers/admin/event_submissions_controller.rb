class Admin::EventSubmissionsController < ApplicationController
  def index
    @event_submission = Event.where(validated: nil)
  end

  def show
    @event = Event.find(params[:id])
  end

  def edit
    @event = Event.find(params[:id])
  end

  def update
  end
end
