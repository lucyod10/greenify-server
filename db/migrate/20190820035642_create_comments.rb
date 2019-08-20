class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.integer :user_id
      t.integer :plant_id
      t.text :comment
      t.integer :rating

      t.timestamps
    end
  end
end
