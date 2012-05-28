class AddBad < ActiveRecord::Migration
  def up
    add_column :events, :bad, :boolean
  end

  def down
    remove_column :events, :bad
  end
end
