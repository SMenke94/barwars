class Bar < ApplicationRecord
  before_save :set_yelp_data
  has_many :deals, dependent: :destroy

  validates :opening_hour, presence: true, allow_blank: false
  validates :photo, presence: true
  validates :name, presence: true, uniqueness: true, allow_blank: false
  validates :address, presence: true, allow_blank: false
  validates :smoking, presence: true
  validates :dancing, presence: true

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  def set_yelp_data
    url = "https://api.yelp.com/v3/businesses/search"
    params = {
      term: self.name,
      location: self.address
    }
    response = HTTP.auth("Bearer #{ENV["YELP_API_KEY"]}").get(url, params: params)
    @result = response.parse['businesses'][0]
    self.yelp_id = @result['id']
    self.yelp_rating = @result['rating']
  end
end
