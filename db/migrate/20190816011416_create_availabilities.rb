class CreateAvailabilities < ActiveRecord::Migration[5.2]
  def change
    create_table :availabilities do |t|
      t.date :from
      t.date :to
      t.integer :plant_id

      t.timestamps
    end
  end
end
