class Website < ApplicationRecord
  default_scope { where(:active => true) }
  enum scan_schedule: [:weekly, :daily, :monthly]
  attribute :active, :boolean, default: true

  has_many :kookies

  validates_presence_of :url, :weekly_scan_day, :scan_schedule, :added_date

  def deactivate!
    self.active = false
    self.save
  end
end
