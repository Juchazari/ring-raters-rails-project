class CreateOnionRings < ActiveRecord::Migration[6.0]
  def change
    create_table :onion_rings do |t|
      t.string :name
      t.string :nutritional_facts
      t.timestamps
    end
  end
end
