class Transfer < ApplicationRecord
  belongs_to :receiver, class_name: 'User', foreign_key: "receiver_id"
  belongs_to :donation
end
