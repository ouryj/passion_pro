class AddColumnToResidence < ActiveRecord::Migration[5.2]
  def change
    add_column :residences, :title, :string
  end
end
