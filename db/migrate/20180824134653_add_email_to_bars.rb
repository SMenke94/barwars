class AddEmailToBars < ActiveRecord::Migration[5.2]
  def change
    add_column :bars, :email, :string
  end
end
