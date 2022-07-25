class Workout < ApplicationRecord
    belongs_to :user, :optional => true
    belongs_to :exercise, :optional => true
end