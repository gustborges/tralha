class NotificationsController < ApplicationController

  def index
    @notifications = Notification.all
    current_user.notifications.update_all(read: true)
  end
end
