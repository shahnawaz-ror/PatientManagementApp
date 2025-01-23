class CreatePatients < ActiveRecord::Migration[7.1]
  def change
    create_table :patients do |t|
      t.string :name
      t.string :email
      t.datetime :date_of_birth

      t.datetime :next_appointment
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
