class CreateNailTechnicians < ActiveRecord::Migration[6.0]
  def change
    create_table :nail_technicians do |t|
      t.string :name
      t.string :skill_set
      t.integer :store_id

      t.timestamps
    end
  end
end
