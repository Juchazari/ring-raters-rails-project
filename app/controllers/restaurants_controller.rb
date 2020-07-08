class RestaurantsController < ApplicationController
    # index list of resteraunts (avrage reviews desplayed as well?)
    # show- Restaurant page displayes all onion rings, and the avrage rating for each one)

    def index
        @resteraunt = Restaurant.all
    end

    def show
        @resteraunt = Restaurant.find(params[:id])
    end

end