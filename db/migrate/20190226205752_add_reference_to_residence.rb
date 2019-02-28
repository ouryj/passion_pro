class AddReferenceToResidence < ActiveRecord::Migration[5.2]
  def change
    add_reference :residences, :user, index: true 
  end
end
