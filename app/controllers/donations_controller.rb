class DonationsController < ApplicationController

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

  def show
    if current_user.role = "receiver"
      @donation = Donation.find(params[:id])
    end
  end

  def new
    @donation = Donation.new
  end

  def create
    @donation = Donation.new(donation_params)
    if @donation.save
      redirect_to donation_path(@donation)
      # Depois será necessário filtrar os receivers por receiver_profile compatível
    else
      render 'donations/new'
    end
  end

  private

  def donation_params
    params.require(:donation).permit(:name, :description, :user, :category, :conservation, :status)
  end
end
