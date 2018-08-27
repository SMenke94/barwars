class AddYelpRatingToBars < ActiveRecord::Migration[5.2]
  def change
    add_column :bars, :yelp_rating, :integer
  end
end
