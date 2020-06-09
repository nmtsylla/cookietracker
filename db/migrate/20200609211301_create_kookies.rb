class CreateKookies < ActiveRecord::Migration[6.0]
  def change
    create_table :kookies do |t|
      t.string :url
      t.string :name
      t.string :value
      t.string :path
      t.string :domain
      t.string :secure
      t.string :httponly
      t.datetime :expiry
      t.datetime :seen_date
      t.references :description, null: false, foreign_key: true

      t.timestamps
    end
  end
end
