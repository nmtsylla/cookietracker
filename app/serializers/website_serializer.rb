class WebsiteSerializer < ActiveModel::Serializer
  attributes :id, :url, :weekly_scan_day, :scan_schedule, :added_date, :customer_id, :active
  has_many :kookies
end
