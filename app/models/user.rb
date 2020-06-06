class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  has_many :receiver_profiles, dependent: :destroy
  has_many :donations, dependent: :destroy
  has_many :transfers, dependent: :destroy
  has_many :messages, dependent: :destroy
  has_one_attached :photo
  has_many :notifications, dependent: :destroy

  def receiver?
    role == "receiver"
  end

  def donor?
    role == "donor"
  end

  def recycler?
    role == "recycler"
  end
end
