class UserDeal < ApplicationRecord
  belongs_to :deal
  belongs_to :user
  # For the user to save future deals
  validates :deal, uniqueness: { scope: :user }
end
