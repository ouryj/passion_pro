class RemoveColumnToUser < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :description
  end
end
