require 'rails_helper'

RSpec.describe(Description, type: :model) {

  subject { build(:description) }

  it "name should be present" do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it "description should be present" do
    subject.description = nil
    expect(subject).to_not be_valid
  end

  it "online_description should be present" do
    subject.online_description = nil
    expect(subject).to_not be_valid
  end
}
