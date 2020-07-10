class OnionRingsController < ApplicationController

    def index
        @onion_rings = OnionRing.all
    end

    def show
        @onion_ring = OnionRing.find(params[:id])
        @restaurant = Restaurant.find(params[:restaurant_id])
    end
        
end
