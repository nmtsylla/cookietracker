require 'rails_helper'

RSpec.describe ScheduleWebsiteForm, type: :model  do
  subject { ScheduleWebsiteForm.new(url: Faker::Internet.url, scan_schedule: :weekly, weekly_scan_day: (0..5).to_a.sample, added_date: Faker::Date.in_date_period(month: 1)) }

  context "validations" do
    it{ should validate_presence_of :url }
    it{ should validate_presence_of :scan_schedule }
    it{ should validate_presence_of :weekly_scan_day }
    it{ should validate_presence_of :added_date }
  end
  
  context "when created" do
    before {subject.valid?}
    it { expect(subject.active).to eq(true) }
  end
end
