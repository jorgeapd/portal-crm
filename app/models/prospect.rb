class Prospect < ApplicationRecord
  belongs_to :user

  validates :name, :email, :telephone, presence: true
  validates :name, :email, :telephone, uniqueness: true
end
