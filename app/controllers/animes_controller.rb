class AnimesController < ApplicationController
   before_action :authenticate_studio!, except:[:show, :index] 
  # before_action :check, only:[:index]
  
  def index
    @animes = Anime.where(studio_id: current_studio.id)
    #render json: @animes
      end
    
      def show
        @anime = Anime.find(params[:id])
        @characters = @anime.characters
      end

      def new
        @anime = Anime.new
      end
    
      def create    
        @anime = Anime.new(anime_params) 
        @anime.studio = current_studio
        @anime.save
        redirect_to @anime
      end
    

        def edit
            @anime = Anime.find(params[:id])
          end
    
          def update
            anime = Anime.find(params[:id])
            anime.update(anime_params)
              
            redirect_to animes_path
          end
    
          def destroy
            Anime.find(params[:id]).destroy
            redirect_to animes_path
          end  

      private
    
       def anime_params
         params.require(:anime).permit( :name, :category, :aired_year,
          :episodes, :duration,:studio_id,:image)
       end

      
      # def anime_params
      #   params.require(:anime).permit(:name, :category, :aired_year,
      #   :episodes, :duration,
      #   characters_attributes:[:id,:name, :birth_year, :gender,:_destroy])
      # end
      
end
