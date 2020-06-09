class Kookie < ApplicationRecord
  belongs_to :description
  belongs_to :website

  validates_presence_of :name, :url, :value, :path, :domain, :secure, :httponly, :seen_date, :expiry
end
