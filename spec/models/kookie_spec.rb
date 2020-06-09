require 'rails_helper'

RSpec.describe Kookie, type: :model do
  subject { Kookie.new(name: "Lorem ipsum",
                            description: "Le Lorem Ipsum est simplement du faux texte employé dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l'imprimerie depuis les années 1500, quand un imprimeur anonyme assembla ensemble des morceaux",
                            online_description: "Le Lorem Ipsum est simplement du faux texte employé dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l'imprimerie depuis les années 1500, quand un imprimeur anonyme assembla ensemble des morceaux")
  }

  before { subject.save }

  it "name should be present" do
    subject.name = nil
    expect(subject).to_not be_valid
  end
end
