class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.integer :plant_id
      t.integer :user_id
      t.date :from
      t.date :to

      t.timestamps
    end
  end
end
