class CreateRegistrations < ActiveRecord::Migration[6.0]
  def change
    create_table :registrations do |t|
      t.date :registration_date
      t.monetize :value
      t.integer :payment_day
      t.integer :have_allergy
      t.integer :use_medicine
      t.integer :have_surgery
      t.integer :health_problem

      t.references :payment_type, null: false, foreign_key: true
      t.references :person, null: false, foreign_key: true

      t.timestamps
    end
  end
end
