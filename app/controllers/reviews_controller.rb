class ReviewsController < ApplicationController

    def show
        @review = Review.find(params[:id])
    end

    def new
        @onion_ring = OnionRing.find(params[:onion_ring_id])
        @review = Review.new
    end

    def create
        @review = Review.new(review_params)
        @review.user_id = current_user.id
        @review.onion_ring_id = params[:onion_ring_id]

        if @review.save
            redirect_to review_path(@review)
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