class CreateStories < ActiveRecord::Migration[5.2]
  def change
    create_table :stories do |t|
      t.string :title, null: false
      t.string :summary, null: false
      t.integer :create_by
      t.integer :update_by

      t.timestamps
    end
  end
end
