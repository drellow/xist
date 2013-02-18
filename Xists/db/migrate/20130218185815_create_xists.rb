class CreateXists < ActiveRecord::Migration
  def change
    create_table :xists do |t|
      t.string :title
      t.integer :user_id

      t.timestamps
    end
  end
end
