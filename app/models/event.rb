class Event < ActiveRecord::Base
  attr_accessible :category_id, :name, :type_id, :bad, :goal
  has_many :logs
  belongs_to :type
  belongs_to :category
end
