class CreateBars < ActiveRecord::Migration[5.2]
  def change
    create_table :bars do |t|
      t.string :opening_hour
      t.string :photo
      t.string :name
      t.string :address
      t.string :contact_info
      t.boolean :smoking
      t.boolean :dancing

      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
