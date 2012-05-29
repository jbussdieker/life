class CreateGroceries < ActiveRecord::Migration
  def change
    create_table :groceries do |t|
      t.string :name
      t.float :target
      t.integer :unit_type_id

      t.timestamps
    end
  end
end
