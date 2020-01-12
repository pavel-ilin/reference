class AddDeveloperIdToAis < ActiveRecord::Migration[5.2]
  def change
    add_column :ais, :developer_id, :integer
  end
end
