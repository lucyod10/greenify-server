class AddPlantIdToAvailabilities < ActiveRecord::Migration[5.2]
  def change
    add_column :availabilities, :plant_id, :integer
  end
end
