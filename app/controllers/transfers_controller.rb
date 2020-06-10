class TransfersController < ApplicationController

  def create
    @transfer = Transfer.new
    @transfer.donation = Donation.find(params[:donation_id])
    @transfer.user = current_user
    @transfer.status = "open"
    @transfer.save
  end
