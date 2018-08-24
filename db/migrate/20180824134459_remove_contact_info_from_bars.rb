class RemoveContactInfoFromBars < ActiveRecord::Migration[5.2]
  def change
    remove_column :bars, :contact_info, :string
  end
end
