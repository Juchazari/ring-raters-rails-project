class User < ApplicationRecord
    has_many :reviews
    has_many :onion_rings, through: :reviews

    has_secure_password

    validates :first_name, :last_name, :password, :password_confirmation, presence: true
    validates :email, presence: true, uniqueness: true

    def name
        self.first_name + " " + self.last_name
    end

    def total_ratings
        self.reviews.count
    end

    def avg_rater
        reviews_count = self.reviews.count.to_f
        review_sum = 0.0
        self.reviews.each do |review|
            review_sum += review.rating
        end
        if reviews_count > 0
            return (review_sum / reviews_count).round(1)
        end
        review_sum
    end
end