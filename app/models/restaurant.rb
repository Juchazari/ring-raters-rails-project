class Restaurant < ApplicationRecord
    has_many :onion_restaurants
    has_many :onion_rings, through: :onion_restaurants
end

