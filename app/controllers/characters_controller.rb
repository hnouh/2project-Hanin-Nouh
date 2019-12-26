class CharactersController < ApplicationController
  before_action :authenticate_studio! 
  # def show
  #   @characters = Character.where(anime_id: anime_id.id)
  # end

    def new
        @anime = Anime.find(params[:anime_id])
        @character = Character.new
      end
    
      def create
          puts params
            @anime = Anime.find(params[:character][:anime_id])
            @anime.characters.create(character_params)
            redirect_to @anime
      end

      def edit
        @character = Character.find(params[:id])
      end

      def update
        @character = Character.find(params[:id])
        @character.update(character_params)
        redirect_to animes_path
      end

      def destroy
       Character.find(params[:id]).destroy
       redirect_to animes_path 
      end

      private
    
      def character_params
        params.require(:character).permit(:name, :birth_year, :gender, :pic)
      end
end
