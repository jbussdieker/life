class AddGoal < ActiveRecord::Migration
  def up
    add_column :events, :goal, :integer
  end

  def down
    remove_column :events, :goal
  end
end
