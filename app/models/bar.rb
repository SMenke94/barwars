class Bar < ApplicationRecord
  has_many :deals, dependent: :destroy

  validates :opening_hour, presence: true, allow_blank: false
  validates :photo, presence: true
  validates :name, presence: true, uniqueness: true, allow_blank: false
  validates :address, presence: true, allow_blank: false
  validates :smoking, presence: true
  validates :dancing, presence: true
  validates :phone_number, presence: true, format: { with: /\d\s*\d\s*\d\s*\d\s*\d\s*\d\s*\d\s*\d/,
  message: "Please enter a valid 8 digit Danish phone number (exclude +45)." }
  validates :website, format: { with: /https?:\/\/[\S]+/,
  message: "Please enter a valid website." }
  validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i,
  message: "Please enter a valid email address." }


  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
