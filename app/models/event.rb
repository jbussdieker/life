class Event < ActiveRecord::Base
  attr_accessible :category_id, :name, :type_id, :bad, :goal
  has_many :logs
  belongs_to :type
  belongs_to :category

  def running?
    if logs.where("duration IS NULL").count > 0
      true
    else
      false
    end
  end

  def stop
    l = logs.where("duration IS NULL").first
    diff_seconds = (Time.now - l.created_at).round
    diff_minutes = diff_seconds / 60
    l.duration = diff_minutes
    l.save
  end
end
