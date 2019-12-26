class PagesController < ApplicationController
  # def home
  #     @animes = Anime.all
  # end
  def allAnime
    @animes = Anime.all
end
def Movie
  @animes = Anime.where(category: "Movie")
end
def Series
  @animes = Anime.where(category: "Series")
end
  
  
end
