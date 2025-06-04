class AddClientIdToPhotos < ActiveRecord::Migration[8.0]
  def change
    add_column :photos, :client_id, :integer
  end
end
