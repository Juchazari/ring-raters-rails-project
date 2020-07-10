class ReviewsController < ApplicationController

    def index
        @onion_ring = OnionRing.find(params[:onion_ring_id])
        @reviews = Review.all
    end

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
            session[:return_to] ||= request.referer
            @review = Review.find(params[:id])
        else
            redirect_to root_path
        end
    end

    def update
        @review = Review.find(params[:id])
        
        if @review.update(review_params)
            redirect_to session.delete(:return_to)
        else
            render 'edit'
        end
    end

    def destroy
        @review = Review.find(params[:id])
        @review.destroy
        redirect_to user_reviews_path
    end


    private

        def review_params
            params.require(:review).permit(:description, :rating)
        end

end