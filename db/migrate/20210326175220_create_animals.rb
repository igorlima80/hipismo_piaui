class CreateAnimals < ActiveRecord::Migration[6.0]
  def change
    create_table :animals do |t|
      t.string :name
      t.string :breed
      t.string :height
      t.string :coat
      t.date :birthday
      t.string :source
      t.string :passport
      t.string :chip
      t.string :father
      t.string :mother
      t.integer :sex
      t.integer :apt
      t.date :unfit_date
      t.text :reason_unfit

      t.timestamps
    end
  end
end
