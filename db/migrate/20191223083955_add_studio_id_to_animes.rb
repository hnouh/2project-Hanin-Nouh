class AddStudioIdToAnimes < ActiveRecord::Migration[6.0]
  def change
    add_reference :animes, :studio, null: false, foreign_key: true
  end
end
