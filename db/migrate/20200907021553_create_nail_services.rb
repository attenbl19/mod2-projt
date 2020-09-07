class CreateNailServices < ActiveRecord::Migration[6.0]
  def change
    create_table :nail_services do |t|
      t.belongs_to :nail_technician, null: false, foreign_key: true
      t.string :type

      t.timestamps
    end
  end
end
