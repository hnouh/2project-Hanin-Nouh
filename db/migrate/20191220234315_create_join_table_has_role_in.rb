class CreateJoinTableHasRoleIn < ActiveRecord::Migration[6.0]
  def change
    create_join_table :characters, :animes do |t|
      # t.index [:character_id, :anime_id]
      # t.index [:anime_id, :character_id]
    end
  end
end
