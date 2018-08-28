class ChangeNamesToFullNameInUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :full_name, :string
    remove_column :users, :first_name, :string
    remove_column :users, :last_name, :string
  end
end
