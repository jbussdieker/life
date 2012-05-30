class Log < ActiveRecord::Base
  attr_accessible :event_id, :note, :duration
  belongs_to :event
  self.per_page = 15
end
