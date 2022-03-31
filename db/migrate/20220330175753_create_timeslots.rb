class CreateTimeslots < ActiveRecord::Migration[7.0]
  def change
    create_table :timeslots do |t|
      t.integer "movie_id"
      t.integer "report_id"
      t.string "time_slot"
      t.integer "theater_number"
      t.timestamps
    end
  end
end
