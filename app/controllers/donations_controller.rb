class DonationsController < ApplicationController

  def index
    if current_user.receiver?
      @receiver_profiles = current_user.receiver_profiles

      @profile_categories = []
      @receiver_profiles.each do |profile|
        @profile_categories << profile.category
      end

      @profile_categories.each do |category|
        @donations = Donation.where(category: category)
      end
    else
      @donations = current_user.donations
    end
  end

  def show
    if current_user.receiver?
      @donation = Donation.find(params[:id])
      @phone = @donation.user.phone
    else
      @donation = Donation.find(params[:id])
      donation = Donation.find(params[:id])
      receivers = ReceiverProfile.where(category_id: donation.category_id)
      @users = []
      receivers.each { |receiver| @users << User.find(receiver.user_id) }
    end
  end

  def new
    @donation = Donation.new
  end

  def create
    @donation = Donation.new(donation_params)
    @donation.status = "open"
    @donation.user_id = current_user.id
    if @donation.save
      redirect_to donation_path(@donation)
    else
      render 'donations/new'
    end
  end

  def destroy
    if current_user.role == "donor"
      @donation = Donation.find(params[:id])
      @donation.destroy
      redirect_to donations_path
    end
  end

  def edit
    @categories = ['Brinquedos', 'Livros', 'Eletrônicos', 'Móveis', 'Roupas']
    if current_user.role == "donor"
      @donation = Donation.find(params[:id])
    end
  end

  def update
    @donation = Donation.find(params[:id])
    if @donation.update(donation_params)
      redirect_to donation_path(@donation)
    else
      render :edit
    end
  end

  private

  def donation_params
    params.require(:donation).permit(:name, :category_id, :description, :user, :conservation, :status, :photo)
  end
end
