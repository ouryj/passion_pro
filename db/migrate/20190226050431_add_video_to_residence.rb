class AddVideoToResidence < ActiveRecord::Migration[5.2]
  def change
    add_column :residences, :video, :string
  end
end
