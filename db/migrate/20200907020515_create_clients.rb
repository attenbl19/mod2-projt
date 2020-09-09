class CreateClients < ActiveRecord::Migration[6.0]
  def change
    create_table :clients do |t|
      t.string :username
      t.string :password_digest
      t.string :email
      t.string :phone_number
      t.integer :store_id
      
      t.timestamps
    end
  end
end
