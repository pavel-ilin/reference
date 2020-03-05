class RemoveColumaColumnsFromPatients < ActiveRecord::Migration[6.0]
  def change

    remove_column :patients, :columna, :integer

    remove_column :patients, :columns, :float
  end
end
