class CreateClients < ActiveRecord::Migration[8.0]
  def change
    create_table :clients do |t|
      t.string :name
      t.integer :phone_number
      t.string :email

      t.timestamps
    end
  end
end
