class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.date :event_date, null: false
      t.text :name, null: false
      t.text :location, null: false

      t.timestamps null: false
    end
    add_index :events, [:location, :event_date], unique: true
  end
end
