class ReviewsController < ApplicationController

    def index
        @reviews = Review.all
    end

    def show
        @review = Review.find(params[:id])
    end

    def new
        @onion_ring = OnionRing.find(params[:id])
        @review = Review.new
    end

    def create
        @review = Review.new(review_params)
        @review.user_id = current_user.id

        if @review.save
            redirect_to review_path(@review)
        else
            render 'new'
        end
    end

    def edit
        @review = Review.find(params[:id])
    end

    def update

    end


    private

        def review_params
            params.require(:review).permit(:description, :rating, :onion_ring_id)
        end
end