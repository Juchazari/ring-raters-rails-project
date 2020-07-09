class AddImgPathToRestaurants < ActiveRecord::Migration[6.0]
  def change
    add_column :restaurants, :img_path, :string
  end
end
