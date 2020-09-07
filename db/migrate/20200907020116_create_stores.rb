class CreateStores < ActiveRecord::Migration[6.0]
  def change
    create_table :stores do |t|
      t.string :name
      t.string :address
      t.integer :phone_number
      t.integer :store_hours

      t.timestamps
    end
  end
end
