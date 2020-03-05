class CreateResults < ActiveRecord::Migration[6.0]
  def change
    create_table :results do |t|
      t.datetime :date
      t.integer :systolic
      t.integer :diastolic
      t.float :weight
      t.float :temperature
      t.references :patient, null: false, foreign_key: true

      t.timestamps
    end
  end
end
