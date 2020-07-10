class ReviewsController < ApplicationController

    def new
        if current_user
            @review = Review.new
            @onion_ring = OnionRing.find(params[:onion_ring_id])
        else
            redirect_to login_path, alert: "Please Log in to write a review!"
        end
    end

    def create
        @review = Review.new(review_params)

        @review.user_id = current_user.id
        @review.onion_ring_id = params[:onion_ring_id]

        @onion_ring = OnionRing.find(params[:onion_ring_id])
        @restaurant = Restaurant.find(params[:restaurant_id])

        if @review.save
            redirect_to restaurant_onion_ring_path(@restaurant, @onion_ring)
        else
            render 'new'
        end
    end

    def edit
        if current_user
            @review = Review.find(params[:id])
        else
            redirect_to root_path
        end
    end

    def update
        @review = Review.find(params[:id])
        @onion_ring = OnionRing.find(params[:onion_ring_id])
        
        if @review.update(review_params)
            redirect_to onion_ring_path(@onion_ring)
        else
            render 'edit'
        end
    end


    private

        def review_params
            params.require(:review).permit(:description, :rating)
        end

end