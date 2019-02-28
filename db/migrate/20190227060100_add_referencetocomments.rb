class AddReferencetocomments < ActiveRecord::Migration[5.2]
  def change
    add_reference :comments, :residence, index: true
  end
end
