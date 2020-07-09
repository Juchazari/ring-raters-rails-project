class OnionRingsController < ApplicationController
    before_action :find_onion_ring, only: [:show, :edit, :update]

    def index
        @onion_rings = OnionRing.all
    end

    def show
    end

    def new
        @onion_ring = OnionRing.new
    end
    
    def create
        @onion_ring = OnionRing.new(onion_ring_params)

        if @onion_ring.save
            redirect_to onion_ring_path(@onion_ring)
        else
            render :new
        end
    end

    def edit
    end

    def update
        @onion_ring.update(onion_ring_params)
        redirect_to onion_ring_path(@onion_ring)
    end

    private 

        def onion_ring_params
            params.require(:onion_ring).permit(:name, :nutritional_facts)
        end
        def find_onion_ring
            @onion_ring = OnionRing.find(params[:id])
        end
end
