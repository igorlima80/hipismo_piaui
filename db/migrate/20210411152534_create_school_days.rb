class CreateSchoolDays < ActiveRecord::Migration[6.0]
  def change
    create_table :school_days do |t|
      t.string :name

      t.timestamps
    end
  end
end
