class CreatePlaceBookings < ActiveRecord::Migration
  def change
    create_table :place_bookings do |t|
      t.string :user_name
      t.string :queue_name
      t.integer :number
      t.time :start
      t.time :end

      t.timestamps
    end
  end
end
