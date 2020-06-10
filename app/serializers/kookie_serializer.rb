class KookieSerializer < ActiveModel::Serializer
  attributes :id, :name, :url, :value, :path, :domain, :secure, :httponly, :seen_date, :expiry
end
