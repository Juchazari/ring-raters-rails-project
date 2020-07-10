class Review < ApplicationRecord
    belongs_to :user
    belongs_to :onion_ring

    validates :rating, :description, presence: true
end
