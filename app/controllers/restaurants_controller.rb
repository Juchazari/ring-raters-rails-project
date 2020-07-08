class RestaurantsController < ApplicationController
    # index list of resteraunts (avrage reviews desplayed as well?)
    # show- Restaurant page displayes all onion rings, and the avrage rating for each one)

    before_action :find_restaurant, only: [:show, :edit, :update]
    
    def index
        @restaurants = Restaurant.all
    end

    def show
    end

    def new
        @restaurant = Restaurant.new
    end
    
    def create
        @restaurant = Restaurant.new(restaurant_params)

        if @restaurant.save
            redirect_to restaurant_path(@restaurant)
        else
            render :new
        end
    end

    def edit
    end

    def update
        @restaurant.update(restaurant_params)
        redirect_to restaurant_path(@restaurant)
    end

    private 

    def restaurant_params
        params.require(:restaurant).permit(:name, :address)
    end
    def find_restaurant
        @restaurant = Restaurant.find(params[:id])
    end

end