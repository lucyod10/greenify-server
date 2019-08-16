class CreatePlants < ActiveRecord::Migration[5.2]
  def change
    create_table :plants do |t|
      t.text :name
      t.text :images
      t.text :age
      t.text :status
      t.integer :cost
      t.integer :worth
      t.text :description

      t.timestamps
    end
  end
end
