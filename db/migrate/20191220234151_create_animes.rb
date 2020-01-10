class CreateAnimes < ActiveRecord::Migration[6.0]
  def change
    create_table :animes do |t|
      t.string :name
      t.string :category
      t.integer :aired_year
      t.integer :episodes
      t.integer :duration

      t.timestamps
    end
  end
end
