class CreateSales < ActiveRecord::Migration[7.0]
  def change
    create_table :sales do |t|
      t.integer "timeslot_id"
      t.integer "report_id"
      t.integer "tickets_sold"
      t.timestamps
    end
  end
end
