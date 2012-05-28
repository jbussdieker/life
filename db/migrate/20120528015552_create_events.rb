class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.integer :type_id
      t.integer :category_id

      t.timestamps
    end
  end
end
