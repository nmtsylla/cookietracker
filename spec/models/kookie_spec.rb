require 'rails_helper'

RSpec.describe Kookie, type: :model do

  subject { build(:kookie) }

  it "name should be present" do
    subject.name = nil
    expect(subject).not_to be_valid
  end
  it "url should be present" do
    subject.url = nil
    expect(subject).not_to be_valid
  end
  it "value should be present" do
    subject.value = nil
    expect(subject).not_to be_valid
  end
  it "path should be present" do
    subject.path = nil
    expect(subject).not_to be_valid
  end
  it "domain should be present" do
    subject.domain = nil
    expect(subject).not_to be_valid
  end
  it "secure should be present" do
    subject.secure = nil
    expect(subject).not_to be_valid
  end
  it "expiry should be present" do
    subject.expiry = nil
    expect(subject).not_to be_valid
  end
  it "seen_date should be present" do
    subject.seen_date = nil
    expect(subject).not_to be_valid
  end


  it{should belong_to(:description)}
  it{should belong_to(:website)}


end
