class AddColumnToShops < ActiveRecord::Migration[6.0]
  def change
    add_column :shops, :image_url, :string
  end
end
