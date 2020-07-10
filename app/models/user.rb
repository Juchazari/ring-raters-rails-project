class User < ApplicationRecord
    has_many :reviews
    has_many :onion_rings, through: :reviews

    has_secure_password

    validates :first_name, :last_name, :password, presence: true
    validates :email, presence: true, uniqueness: true

    def name
        self.first_name + " " + self.last_name
    end
end