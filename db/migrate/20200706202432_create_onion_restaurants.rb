class CreateOnionRestaurants < ActiveRecord::Migration[6.0]
  def change
    create_table :onion_restaurants do |t|
      t.integer :restaurant_id
      t.integer :onion_ring_id
      t.timestamps
    end
  end
end
