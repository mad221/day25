class Admin::AttendancesController < Admin::ApplicationController
  def show
    @attendances = Event.all
  end
end
