class AddFontawesomeIconToTypes < ActiveRecord::Migration[5.2]
  def change
    add_column :types, :fa_icon, :string
  end
end
