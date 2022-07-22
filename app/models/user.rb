class User < ApplicationRecord
    has_many :routines
    has_many :workouts
    has_secure_password
    validates :email, :uniqueness => true, :presence => true
end