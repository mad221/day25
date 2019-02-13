class UserController < ApplicationController
before_action :user_match, only: [:show]
  def show
    @user = User.find(params[:id])
  end
  def user_match
    @user = User.find(params[:id])
    unless current_user.id == @user.id
      redirect_to event_index_path
    end
  end
end
