class CreateBottleStores < ActiveRecord::Migration
  def change
    create_table :bottle_stores do |t|
      t.string :name
      t.string :open_time
      t.string :closed_time
      t.string :latitude
      t.string :longitude
      t.timestamps null: false
    end
  end
end
