class CreateBuildings < ActiveRecord::Migration[6.0]
  def change
    create_table :buildings do |t|
      t.string :name
      t.string :country
      t.string :address
      t.integer :rent_per_floor
      t.integer :number_of_floor

      t.timestamps
    end
  end
end
