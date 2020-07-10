class Review < ApplicationRecord
    belongs_to :user
    belongs_to :onion_ring

    validates :rating, :description, presence: true
    validates :rating, numericality: true,
                       inclusion: {in: 1..5}
end
