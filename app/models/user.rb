class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :receiver_profiles, dependent: :destroy
  has_many :donations, dependent: :destroy
  has_many :transfers, dependent: :destroy
  has_many :messages, dependent: :destroy
  has_one_attached :photo
  has_many :notifications

  def receiver?
    role == "receiver"
  end

  def donnor?
    role != "receiver"
  end
end
