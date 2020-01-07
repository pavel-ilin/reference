class AddColumaColumnsToPatients < ActiveRecord::Migration[6.0]
  def change
    add_column :patients, :columna, :integer
    add_column :patients, :columns, :float
  end
end
