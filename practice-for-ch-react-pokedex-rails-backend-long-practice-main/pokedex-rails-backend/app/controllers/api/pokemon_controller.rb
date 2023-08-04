class Api::PokemonController < ApplicationController
    def types
        render json: Pokemon::TYPES
      end

    def index
        @pokemon = Pokemon.all
        render json: @pokemon
    end

    def show
        @pokemon = Pokemon.find_by(id: params[:id])
        render json: @pokemon
    end

    # def create 
    # end

    # def pokemon_params
    #     params.require(:pokemon).permit(:)
    # end
end
