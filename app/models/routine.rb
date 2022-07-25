class Routine < ApplicationRecord
    has_many :workouts
    belongs_to :user, :optional => true
    accepts_nested_attributes_for :workouts
end
