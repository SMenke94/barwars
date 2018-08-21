class Bar < ApplicationRecord
  has_many :deals, dependent: :destroy

  validates :opening_hour, presence: true, allow_blank: false
  validates :photo, presence: true
  validates :name, presence: true, uniqueness: true, allow_blank: false
  validates :address, presence: true, allow_blank: false
  validates :contact_info, presence: true, allow_blank: false
  # validates :smoking, presence: true
  # validates :dancing, presence: true

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
