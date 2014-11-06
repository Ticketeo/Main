class CreateQueueModels < ActiveRecord::Migration
  def change
    create_table :queue_models do |t|
      t.string :name
      t.integer :gps_longitude
      t.integer :gps_latitude
      t.text :description
      t.string :image
      t.integer :num_customer
      t.integer :last_customer
      t.integer :average_time

      t.timestamps
    end
  end
end
