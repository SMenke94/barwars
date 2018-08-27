class AddYelpIdToBars < ActiveRecord::Migration[5.2]
  def change
    add_column :bars, :yelp_id, :string
  end
end
