class CreateClients < ActiveRecord::Migration[6.0]
  def change
    create_table :clients do |t|
      t.string :username
      t.password_digest :password
      t.string :email
      t.integer :phone_number

      t.timestamps
    end
  end
end
