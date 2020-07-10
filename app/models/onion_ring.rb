class OnionRing < ApplicationRecord
    has_many :reviews
    has_many :users, through: :reviews
    has_many :onion_restaurants
    has_many :restaurants, through: :onion_restaurants

    def reviews_count
        self.reviews.count
    end

    def avg_rating
        review_sum = 0.0
        self.reviews.each do |review|
            review_sum += review.rating
        end
        if reviews_count > 0
            return (review_sum / reviews_count.to_f)
        end
        review_sum
    end
end
