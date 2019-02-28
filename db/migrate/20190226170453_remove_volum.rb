class RemoveVolum < ActiveRecord::Migration[5.2]
  def change
    remove_column :residences, :country
  end
end
