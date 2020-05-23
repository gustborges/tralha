class Chatroom < ApplicationRecord
  belongs_to :transfer
  has_many :messages
end
