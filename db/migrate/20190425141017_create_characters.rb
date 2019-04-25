class CreateCharacters < ActiveRecord::Migration[5.2]
  def change
    create_table :characters do |t|
      t.integer :user_id
      t.string :user_name
      t.integer :x
      t.integer :y
      t.string :direction
      t.boolean :moving
      t.boolean :active

      t.timestamps
    end
  end
end
