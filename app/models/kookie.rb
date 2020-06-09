class Kookie < ApplicationRecord
  belongs_to :description

  validates_presence_of :name, :url, :value, :path, :domain, :secure, :httponly, :seen_date, :expiry
end
