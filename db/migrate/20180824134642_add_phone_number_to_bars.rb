class AddPhoneNumberToBars < ActiveRecord::Migration[5.2]
  def change
    add_column :bars, :phone_number, :string
  end
end
