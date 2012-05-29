class Grocery < ActiveRecord::Base
  attr_accessible :name, :target, :unit_type_id
  belongs_to :unit_type
end
