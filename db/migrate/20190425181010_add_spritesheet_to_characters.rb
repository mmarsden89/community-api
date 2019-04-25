class AddSpritesheetToCharacters < ActiveRecord::Migration[5.2]
  def change
    add_column :characters, :spritesheet, :string
  end
end
