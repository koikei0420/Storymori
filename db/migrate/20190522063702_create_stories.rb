class CreateStories < ActiveRecord::Migration[5.2]
  def change
    create_table :stories do |t|
      t.int :id, :null => false
      t.string :title
      t.string :summary
      t.date :create_at
      t.date :update_at
      t.int :create_by
      t.int :update_by

      t.timestamps
    end
  end
end
