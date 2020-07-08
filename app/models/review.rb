class Review < ApplicationRecord
    belongs_to :user
    belongs_to :onion_ring
end
