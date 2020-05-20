class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :name
      t.string :description
      t.string :image
      t.string :origin
      t.integer :cost
      # t.integer :stock
      t.float :average_rating
      t.belongs_to :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
