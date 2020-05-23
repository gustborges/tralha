class DonationsController < ApplicationController

  def show
    if current_user.role = receiver
      @donation = Donation.find(params[:id])
  end
end
