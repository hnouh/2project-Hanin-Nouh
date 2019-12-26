 Anime.destroy_all
 Character.destroy_all
 
anime = Anime.create(name: "Test",studio_id: 1)
anime.characters.create(name: "test test")