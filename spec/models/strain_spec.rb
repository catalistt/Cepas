require 'rails_helper'

RSpec.describe Strain, :type => :model do
  it "should not be valid without name" do
    expect(Strain.new).to_not be_valid
  end

  it "should not be valid with empty name" do
    strain = Strain.new(name: "")
    expect(strain).to_not be_valid
  end

  it "should be valid with name" do
    strain = Strain.new(name: "Carmenere")
    expect(strain).to be_valid
  end
end