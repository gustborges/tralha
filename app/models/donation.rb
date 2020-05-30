class Donation < ApplicationRecord
  belongs_to :user
  belongs_to :category

  has_many :transfers, dependent: :destroy
  has_one_attached :photo
end
