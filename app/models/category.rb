class Category < ApplicationRecord
  has_many :donations
  has_many :receiver_profiles
end
