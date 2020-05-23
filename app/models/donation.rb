class Donation < ApplicationRecord
  belongs_to :user
  belongs_to :category

  has_many :transfers, dependent: :destroy
end
