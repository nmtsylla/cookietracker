require 'rails_helper'

RSpec.describe Kookie, type: :model do
  let!(:desc) { Description.new(name: "Lorem ipsum", description: "Le Lorem Ipsum est simplement du faux texte employé dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l'imprimerie depuis les années 1500, quand un imprimeur anonyme assembla ensemble des morceaux", online_description: "Le Lorem Ipsum est simplement du faux texte employé dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l'imprimerie depuis les années 1500, quand un imprimeur anonyme assembla ensemble des morceaux") }
  subject {
    Kookie.new(name: "Cookie 1", url: "test.com/test/path", value: "cookie", path: "/test/path", domain: "test.com", secure: "secure", httponly: "yes", expiry: DateTime.now, seen_date: DateTime.now)
  }

  before { subject.save }

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
end
