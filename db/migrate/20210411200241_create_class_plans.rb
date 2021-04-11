class CreateClassPlans < ActiveRecord::Migration[6.0]
  def change
    create_table :class_plans do |t|
      t.date :start_date

      t.timestamps
    end
  end
end
