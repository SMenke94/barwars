class Bar < ApplicationRecord
  before_save :set_yelp_data
  has_many :deals, dependent: :destroy

  validates :photo, presence: true
  validates :name, presence: true, uniqueness: true, allow_blank: false
  validates :address, presence: true, allow_blank: false

  validates :smoking, inclusion: { in: [ true, false ] }
  validates :dancing, inclusion: { in: [ true, false ] }
  validates :phone_number, presence: true, format: { with: /\d\s*\d\s*\d\s*\d\s*\d\s*\d\s*\d\s*\d/,
  message: "Please enter a valid 8 digit Danish phone number (exclude +45)." }
  # validates :website, format: { with: /https?:\/\/[\S]+/,
  # message: "Please enter a valid website." }
  # validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, message: "Please enter a valid email address." }


  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  def set_yelp_data
    url = "https://api.yelp.com/v3/businesses/search"
    params = { term: self.name, location: self.address }
    response = HTTP.auth("Bearer #{ENV["YELP_API_KEY"]}").get(url, params: params)
    if response['businesses']
      @result = response.parse['businesses'][0]
      self.yelp_id = @result['id']
      self.yelp_rating = @result['rating']
    end
  end
end
