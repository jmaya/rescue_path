class UserNotificationsController < ApplicationController
  def new
    @user_notification = UserNotification.new
  end

  def create
    @user_notification = UserNotification.new user_notification
    @user_notification.user = current_user
    respond_to do |format|
      if @user_notification.save
        format.html { redirect_to root_path, notice: 'The Notification was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def user_notification_params
    params.require(:user_notification).permit(:medium)
  end
end
