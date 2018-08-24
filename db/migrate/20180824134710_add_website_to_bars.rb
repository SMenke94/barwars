class AddWebsiteToBars < ActiveRecord::Migration[5.2]
  def change
    add_column :bars, :website, :string
  end
end
