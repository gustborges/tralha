class UsersController < ApplicationController
  def index
    @users = User.geocoded.where(role: "recycler")
    @markers = @users.map do |user|
      {
        lat: user.latitude,
        lng: user.longitude
      }
    end
  end
end
