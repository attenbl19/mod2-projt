class CreateAppointments < ActiveRecord::Migration[6.0]
  def change
    create_table :appointments do |t|
      t.belongs_to :client, null: false, foreign_key: true
      t.belongs_to :nail_technician, null: false, foreign_key: true
      t.string :day
      t.string :time

      t.timestamps
    end
  end
end
