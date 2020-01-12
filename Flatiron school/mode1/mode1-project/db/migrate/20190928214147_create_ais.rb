class CreateAis < ActiveRecord::Migration[5.2]
  def change
    create_table :ais do |t|
      t.string :name
      t.string :specialization
      t.integer :price
    end
  end
end
