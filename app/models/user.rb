class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :user_deals
  has_many :deals, through: :user_deals

  validates :full_name, presence: true, allow_blank: false

  mount_uploader :photo, PhotoUploader

end
