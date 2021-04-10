class CreateResponsibles < ActiveRecord::Migration[6.0]
  def change
    create_table :responsibles do |t|
      t.string :name
      t.date :birth_day
      t.integer :sex
      t.string :cpf
      t.string :phone_number
      t.references :registration, null: false, foreign_key: true
      t.timestamps
    end
  end
end
