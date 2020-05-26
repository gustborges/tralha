class DonationsController < ApplicationController


  def show
    if current_user.role = "receiver"
      @donation = Donation.find(params[:id])
    end
  end

def index
    @receiver_profiles = current_user.receiver_profiles

    @profile_categories = []
    @receiver_profiles.each do |profile|
      @profile_categories << profile.category
    end

    @profile_categories.each do |category|
      @donations = Donation.where(category: category)
    end
end


end
