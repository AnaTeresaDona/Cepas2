require 'rails_helper'

RSpec.describe Strain, type: :model do
  it "validates uniqueness of strain name" do
    should validate_uniqueness_of(:name)
  end

  it "is valid without a name" do
    strain = Strain.new(name: nil)
    expect(strain).to_not be_valid
  end

  it "is valid without a name" do
    strain = Strain.new(name: "")
    expect(strain).to_not be_valid
  end

  it "is valid without a name" do
    strain = Strain.new(name: "Carmenere")
    expect(strain).to be_valid
  end
  #pending "add some examples to (or delete) #{__FILE__}"
end
