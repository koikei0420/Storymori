class CreatePages < ActiveRecord::Migration[5.2]
  def change
    create_table :pages do |t|
      t.int :id, :null => false
      t.string :name
      t.string :text
      t.int :story_id, :null => false
      t.int :parent_id, :null => false
      t.date :create_at
      t.date :update_at
      t.int :create_by
      t.int :update_by

      t.timestamps
    end
  end
end
