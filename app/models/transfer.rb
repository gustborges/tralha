class Transfer < ApplicationRecord
  belongs_to :receiver, foreign_key: :receiver_id
  belongs_to :donation
end
