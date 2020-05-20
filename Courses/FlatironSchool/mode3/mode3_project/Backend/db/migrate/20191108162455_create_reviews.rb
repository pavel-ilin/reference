class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.string :text
      t.string :author
      t.integer :rating
      t.belongs_to :product, null: false, foreign_key: true

      t.timestamps
    end
  end
end
