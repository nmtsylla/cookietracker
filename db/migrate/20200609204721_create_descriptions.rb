class CreateDescriptions < ActiveRecord::Migration[6.0]
  def change
    create_table :descriptions do |t|
      t.string :name
      t.text :description
      t.text :online_description

      t.timestamps
    end
  end
end
