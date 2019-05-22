class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name, null: false
      t.integer :create_by
      t.integer :update_by

      t.timestamps
    end
  end
end
