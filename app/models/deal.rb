class Deal < ApplicationRecord
  belongs_to :type
  has_many :user_deals, dependent: :destroy
  belongs_to :bar

  validates :description, presence: true, allow_blank: false
  validates :start_time, presence: true, allow_blank: false
  validates :end_time, presence: true, allow_blank: false
  validate :end_after_start_time

  def end_after_start_time
    if start_time > end_time
      errors.add(:end_time, "Can't be before the starting time.")
    end
  end

  def valid_now?
    Time.zone.now.wday == start_time.wday && Time.zone.now <= end_time
  end

  def minutes_to_start
    (start_time - Time.zone.now) / 60
  end

  def minutes_to_end
    (end_time - Time.zone.now) / 60
  end

  def started?
    start_time < Time.zone.now
  end


  def future_deal?
    end_time >= DateTime.current
  end

  def past_deal?
    end_time <= DateTime.current
  end


  def get_there_from(current_coords)
    return nil if current_coords.nil?
    base_url = "https://www.google.com/maps/dir/"
    coord_strings = current_coords[1..-2]
    bar_coords = "/#{bar.latitude},#{bar.longitude}"
    base_url + coord_strings + bar_coords
  end
end


