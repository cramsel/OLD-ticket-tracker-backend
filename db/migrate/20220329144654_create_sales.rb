class CreateSales < ActiveRecord::Migration[7.0]
  def change
    create_table :sales do |t|
      t.integer "movie_ID"
      t.integer "report_ID"
      t.integer "theater_number"
      t.string "time_slot"
      t.integer "tickets_sold"
      t.timestamps
    end
  end
end
