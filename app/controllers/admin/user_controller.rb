class Admin::UserController < Admin::ApplicationController
  def show
    @user = User.all
  end
end
