class Website < ApplicationRecord
  default_scope { where(:active => true) }
  enum scan_schedule: [:weekly, :daily, :monthly]
  has_many :kookies

end
