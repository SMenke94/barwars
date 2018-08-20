class Category < ApplicationRecord
  has_many :bars

  validates :name, presence: true, uniqueness: true, allow_blank: false
  # For future use. Not relevant right now
end
