class CreateClassRooms < ActiveRecord::Migration[6.0]
  def change
    create_table :class_rooms do |t|
      t.time :start_time
      t.time :end_time
      t.references :class_plan, null: false, foreign_key: true
      t.references :school_day, null: false, foreign_key: true
      t.references :registration, null: false, foreign_key: true
      t.references :animal, null: false, foreign_key: true

      t.timestamps
    end
  end
end
