class Website < ApplicationRecord
  enum scan_schedule: [:weekly, :daily, :monthly]
  attribute :active, :boolean, default: true

  has_many :kookies

  validates_presence_of :url, :weekly_scan_day, :scan_schedule, :added_date
end
