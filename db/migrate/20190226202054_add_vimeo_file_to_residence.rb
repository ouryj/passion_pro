class AddVimeoFileToResidence < ActiveRecord::Migration[5.2]
  def change
    add_column :residences, :vimeo_file, :string
  end
end
