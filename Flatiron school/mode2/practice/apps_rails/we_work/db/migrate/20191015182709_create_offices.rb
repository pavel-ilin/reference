class CreateOffices < ActiveRecord::Migration[6.0]
  def change
    create_table :offices do |t|
      t.belongs_to :building, null: false, foreign_key: true
      t.belongs_to :company, null: false, foreign_key: true
      t.integer :floor

      t.timestamps
    end
  end
end
