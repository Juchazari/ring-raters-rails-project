class AddImgUrlToOnionRings < ActiveRecord::Migration[6.0]
  def change
    add_column :onion_rings, :img_url, :string
  end
end
