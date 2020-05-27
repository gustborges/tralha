class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :receiver_profiles, dependent: :destroy
  has_many :donations, dependent: :destroy
  has_many :transfers, foreign_key: "receiver_id", class_name: "Transfer", dependent: :destroy
  has_many :messages, dependent: :destroy

  def receiver?
    role == "receiver"
  end
end
