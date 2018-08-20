class Type < ApplicationRecord
  has_many :deals

  validates :name, presence: true, inclusion: { in: ["Beer", "Happy Hour", "Shots", "Open Bar", "Special Offers"]}

  # Beer, Happy Hour, Shots, Open Bar, Special Offers
end
