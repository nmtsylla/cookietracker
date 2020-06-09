class Description < ApplicationRecord

  validates_presence_of :name, :description, :online_description
end
