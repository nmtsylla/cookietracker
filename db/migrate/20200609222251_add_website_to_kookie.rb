class AddWebsiteToKookie < ActiveRecord::Migration[6.0]
  def change
    add_reference :kookies, :website, null: false, foreign_key: true
  end
end
