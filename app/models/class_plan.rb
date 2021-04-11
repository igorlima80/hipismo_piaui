class ClassPlan < ApplicationRecord
    has_many :class_rooms, dependent: :destroy
    accepts_nested_attributes_for :class_rooms, allow_destroy: true
end
