class AddTimesForWeekends < ActiveRecord::Migration
  def change
    add_column :bottle_stores, :sat_open_times, :string
    add_column :bottle_stores, :sat_closed_times, :string
    add_column :bottle_stores, :sun_open_times, :string
    add_column :bottle_stores, :sun_closed_times, :string
  end
end
