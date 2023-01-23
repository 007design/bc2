class Unit < ApplicationRecord
  has_many :unit_attributes, dependent: :destroy, :foreign_key => "id", :class_name => "UnitAttribute"
end
