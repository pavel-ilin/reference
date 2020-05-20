class CreateProblems < ActiveRecord::Migration[5.2]
  def change
    create_table :problems do |t|
      t.string :title
      t.string :field
      t.string :status
      t.integer :user_id
      t.integer :ai_id
    end
  end
end
