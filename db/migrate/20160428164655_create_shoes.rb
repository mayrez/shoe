class CreateShoes < ActiveRecord::Migration
  def change
    create_table :shoes do |t|
      t.string :name
      t.string :picture
      t.string :designer
      t.text :description
      t.string :color

      t.timestamps null: false
    end
  end
end
