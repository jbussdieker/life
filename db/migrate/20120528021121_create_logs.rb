class CreateLogs < ActiveRecord::Migration
  def change
    create_table :logs do |t|
      t.integer :event_id
      t.string :note

      t.timestamps
    end
  end
end
