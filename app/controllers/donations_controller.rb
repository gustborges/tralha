class DonationsController < ApplicationController
  layout 'footerless', only: :new

  def index
    if current_user.receiver?
      @receiver_profiles = current_user.receiver_profiles
      @profile_categories = []
      @receiver_profiles.each do |profile|
        @profile_categories << profile.category
      current_user.notifications.update_all(read: true)
      end
      @categories_id = @receiver_profiles.map { |category| category.category_id }
      @donations = Donation.includes(:user).where('category_id IN (?)', @categories_id)
      users_ids = User.near([current_user.latitude, current_user.longitude], 3000, :order => :distance).collect{ |a| a.id }
      @donations ||= Donation.all.includes(:user)
      @donations = @donations.where(:user_id =>  users_ids).order(created_at: :desc)
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
      receivers = ReceiverProfile.where(category_id: @donation.category_id)
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
      @receivers = ReceiverProfile.where(category_id: @donation.category_id)
      @receivers.each { |receiver| Notification.create(title: "Nova doação disponível: #{@donation.name} de #{current_user.name}", user: receiver.user) }
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
    if params[:status]
      @donation.status = params[:status]
      @donation.save
      redirect_to donation_path(@donation)
    else
      if @donation.update(donation_params)
        redirect_to donation_path(@donation)
      else
        render :edit
      end
    end
  end

  private

  def donation_params
    params.require(:donation).permit(:name, :category_id, :description, :user, :conservation, :status, :photo)
  end
end
