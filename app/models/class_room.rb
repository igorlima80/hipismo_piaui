class ClassRoom < ApplicationRecord
  belongs_to :class_plan
  belongs_to :school_day
  belongs_to :registration
  belongs_to :animal
end
