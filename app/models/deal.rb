class Deal < ApplicationRecord
  belongs_to :user_deal
  belongs_to :bar
end
