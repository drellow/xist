class CreateXistFiles < ActiveRecord::Migration
  def change
    create_table :xist_files do |t|
      t.integer :xist_id
      t.string :title
      t.text :body

      t.timestamps
    end
  end
end
