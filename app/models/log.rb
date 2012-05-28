class Log < ActiveRecord::Base
  attr_accessible :event_id, :note
  belongs_to :event
end
