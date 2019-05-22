class CreateStories < ActiveRecord::Migration[5.2]
  def change
    create_table :stories do |t|
      t.string :title
      t.string :summary
      t.integer :create_by
      t.integer :update_by

      t.timestamps
    end
  end
end
