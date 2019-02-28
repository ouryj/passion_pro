class RemoveColumnToResidences < ActiveRecord::Migration[5.2]
  def change
    remove_column :residences, :video
  end
end
