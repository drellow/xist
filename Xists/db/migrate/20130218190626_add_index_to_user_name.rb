class AddIndexToUserName < ActiveRecord::Migration
  def change
    add_index :users, :name
  end
end
