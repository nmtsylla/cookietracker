require 'rails_helper'

RSpec.describe Website, type: :model do
  subject { build(:website) }

  before { subject.save }

  context "validations" do
    it{ should define_enum_for(:scan_schedule) }
    it{ should have_many :kookies }
  end

  context "when created" do
    it { expect(subject.active).to eq(true) }
    it { expect(subject.id).to_not eq(nil) }
  end
end
