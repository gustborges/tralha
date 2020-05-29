class TransfersController < ApplicationController

  def create
    @transfer = Transfer.new(transfer_params)
    @transfer.save
  end

  private

  def transfer_params
    params.require(:transfer).permit(:user, :donation, :status)
  end
end
