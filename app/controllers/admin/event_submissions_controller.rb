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
      @event = Event.find(params[:id])
      @event.update_attribute(:validated, params[:decision])
      redirect_to admin_event_submission_path
  end
end
