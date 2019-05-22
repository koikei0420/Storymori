class CreatePages < ActiveRecord::Migration[5.2]
  def change
    create_table :pages do |t|
      t.string :name
      t.string :text
      t.integer :story_id, null: false
      t.integer :parent_id
      t.integer :create_by
      t.integer :update_by

      t.timestamps
    end
  end
end
