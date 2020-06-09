class CreateWebsites < ActiveRecord::Migration[6.0]
  def change
    create_table :websites do |t|
      t.string :url
      t.integer :scan_schedule
      t.integer :weekly_scan_day
      t.datetime :added_date
      t.datetime :last_scanned
      t.integer :customer_id
      t.boolean :active

      t.timestamps
    end
  end
end
