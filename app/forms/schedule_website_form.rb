class ScheduleWebsiteForm
  include ActiveModel::Model
  include ActiveModel::Validations::Callbacks
  before_validation :set_active

  attr_accessor :url, :weekly_scan_day, :scan_schedule,
                :added_date, :customer_id, :active
  validates :url, :weekly_scan_day, :scan_schedule, :customer_id, presence: true

  validates :weekly_scan_day, :numericality=> true, :inclusion => {:in => 0..6, :message => "Value should be between 0 and 6"}
  validates_inclusion_of :scan_schedule, :in => ['weekly', :daily, :monthly]

  def set_active
    self.active = true
    self.weekly_scan_day = self.weekly_scan_day.to_i
  end
end