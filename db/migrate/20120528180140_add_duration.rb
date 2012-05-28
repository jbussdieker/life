class AddDuration < ActiveRecord::Migration
  def up
    add_column :logs, :duration, :integer
  end

  def down
    remove_column :logs, :duration
  end
end
