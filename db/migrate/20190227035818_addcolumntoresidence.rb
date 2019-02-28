class Addcolumntoresidence < ActiveRecord::Migration[5.2]
  def change
    add_column :residences, :post, :string
  end
end
