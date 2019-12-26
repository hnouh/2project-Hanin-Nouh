class AddImageToAnimes < ActiveRecord::Migration[6.0]
  def change
    add_column :animes, :image, :string
  end
end
