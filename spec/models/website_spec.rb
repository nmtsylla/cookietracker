require 'rails_helper'

RSpec.describe Website, type: :model do

  context "validations" do
    it{ is_expected.to validate_presence_of :url }
    it{ is_expected.to validate_presence_of :scan_schedule }
    it{ is_expected.to validate_presence_of :weekly_scan_day }
    it{ is_expected.to validate_presence_of :added_date }
    it{ should have_many :kookies }
  end
end
