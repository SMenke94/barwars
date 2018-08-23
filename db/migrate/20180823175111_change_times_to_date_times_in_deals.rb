class ChangeTimesToDateTimesInDeals < ActiveRecord::Migration[5.2]
  def change
    remove_column :deals, :start_time
    remove_column :deals, :end_time
    add_column :deals, :start_time, :datetime
    add_column :deals, :end_time, :datetime
  end
end
