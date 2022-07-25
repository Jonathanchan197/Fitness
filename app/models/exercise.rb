class Exercise < ApplicationRecord
    has_many :workouts
    has_and_belongs_to_many :muscles
end
