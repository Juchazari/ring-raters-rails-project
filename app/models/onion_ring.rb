class OnionRing < ApplicationRecord
    has_many :reviews
    has_many :users, through: :reviews
    has_many :onion_restaurants
    has_many :restaurants, through: :onion_restaurants
end
