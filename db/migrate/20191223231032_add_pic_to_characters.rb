class AddPicToCharacters < ActiveRecord::Migration[6.0]
  def change
    add_column :characters, :pic, :string
  end
end
